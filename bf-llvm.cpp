#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include <bits/stdc++.h>

using namespace std;
using namespace llvm;

const int DATA_SIZE = 1024;

static std::unique_ptr<LLVMContext> TheContext;
static std::unique_ptr<Module> TheModule;
static std::unique_ptr<IRBuilder<>> Builder;

void initializeLLVM() {
    TheContext = make_unique<LLVMContext>();
    TheModule = std::make_unique<Module>("Brainfuck", *TheContext);
    Builder = std::make_unique<IRBuilder<>>(*TheContext);
}

string readFile(char *fileName) {
    ifstream file(fileName);
    if (!file.is_open()) {
        cerr << "Failed to open a file\n";
        exit(1);
    }
    stringstream buffer;
    buffer << file.rdbuf();
    string content = buffer.str();
    return content;
}

struct BracketInfo {
    map<int, int> match;
    map<int, BasicBlock*> basicBlock;
};

BracketInfo analyseBrackets(string source) {
    vector<int> openBrackets;
    auto bracketInfo = BracketInfo();
    for (int i = 0; i < source.length(); i++) {
        char c = source[i];
        if (c == '[') {
            openBrackets.push_back(i);
        } else if (c == ']') {
            if (openBrackets.empty()) {
                cerr << "Closing bracket at position " << to_string(i) << " does not have a pair\n";
                exit(1);
            }
            auto j = openBrackets.back();
            openBrackets.pop_back();
            bracketInfo.match[i] = j;
            bracketInfo.match[j] = i;
            bracketInfo.basicBlock[i] = BasicBlock::Create(*TheContext, "close");
            bracketInfo.basicBlock[j] = BasicBlock::Create(*TheContext, "open");
        }
    }
    if (!openBrackets.empty()) {
        cerr << "There are more open brackets than closing brackets\n";
        exit(1);
    }
    return bracketInfo;
}

pair<Function*, Function*> declareExternalFunctions() {
    IntegerType* i8 = Type::getInt8Ty(*TheContext);

    FunctionType* getcharType = FunctionType::get(i8, vector<Type*>(), false);
    Function* getchar = Function::Create(getcharType, GlobalValue::ExternalLinkage, "getchar", TheModule.get());

    FunctionType* putcharType = FunctionType::get(Type::getVoidTy(*TheContext), vector<Type*>{i8}, false);
    Function* putchar = Function::Create(putcharType, GlobalValue::ExternalLinkage, "putchar", TheModule.get());

    return pair(getchar, putchar);
}

GlobalVariable* defineDataArray() {
    IntegerType* i8 = Type::getInt8Ty(*TheContext);
    ArrayType* arrayType = ArrayType::get(i8, DATA_SIZE);
    Constant* zeroInitializer = ConstantAggregateZero::get(arrayType);
    GlobalVariable* dataArray = new GlobalVariable(
        *TheModule,
        arrayType,
        false,
        GlobalValue::ExternalLinkage,
        zeroInitializer,
        "data"
    );
    return dataArray;
}

AllocaInst* allocateDataPointer(GlobalVariable* data) {
    IntegerType* i8 = Type::getInt8Ty(*TheContext);
    PointerType* pointerType = PointerType::get(i8, 0);
    AllocaInst* dataPointer = Builder->CreateAlloca(pointerType, nullptr, "dp");
    Constant* arrayPtr = ConstantExpr::getPointerCast(data, pointerType);
    Builder->CreateStore(arrayPtr, dataPointer);
    return dataPointer;
}

void compileProgram(string source, BracketInfo bracketInfo) {
    auto [getchar, putchar] = declareExternalFunctions();
    GlobalVariable* dataArray = defineDataArray();

    FunctionType* functionType = FunctionType::get(Type::getInt32Ty(*TheContext), vector<Type*>(), false);
    Function* theFunction = Function::Create(functionType, GlobalValue::ExternalLinkage, "main", TheModule.get());

    BasicBlock* entry = BasicBlock::Create(*TheContext, "entry", theFunction);
    Builder->SetInsertPoint(entry);

    AllocaInst* dataPointer = allocateDataPointer(dataArray);

    IntegerType* i8 = Type::getInt8Ty(*TheContext);
    IntegerType* i32 = Type::getInt32Ty(*TheContext);

    for (int i = 0; i < source.length(); i++) {
        char c = source[i];
        switch (c) {
            case '<':
            case '>': {
                Value* loadedPointer = Builder->CreateLoad(dataPointer->getType(), dataPointer, "loaded_dp");
                Value* offset = ConstantInt::get(i8, c == '<' ? -1 : +1);
                Value* modifiedPointer = Builder->CreateGEP(dataPointer->getType(), loadedPointer, offset, "modified_dp");
                Builder->CreateStore(modifiedPointer, dataPointer);
                break;
            }
            case '+':
            case '-': {
                Value* loadedPointer = Builder->CreateLoad(dataPointer->getType(), dataPointer, "loaded_dp");
                Value* loadedByte = Builder->CreateLoad(i8, loadedPointer, "byte");
                Value* modifier = ConstantInt::get(i8, c == '-' ? -1 : +1);
                Value* modifiedByte = Builder->CreateAdd(loadedByte, modifier, "modified_byte");
                Builder->CreateStore(modifiedByte, loadedPointer);
                break;
            }
            case '.': {
                Value* loadedPointer = Builder->CreateLoad(dataPointer->getType(), dataPointer, "loaded_dp");
                Value* loadedByte = Builder->CreateLoad(i8, loadedPointer, "byte");
                Builder->CreateCall(putchar, {loadedByte});
                break;
            }
            case ',': {
                Value* loadedPointer = Builder->CreateLoad(dataPointer->getType(), dataPointer, "loaded_dp");
                Value *input = Builder->CreateCall(getchar, {}, "user_input");
                Builder->CreateStore(input, loadedPointer);
                break;
            }
            case '[':
            case ']': {
                Value* loadedPointer = Builder->CreateLoad(dataPointer->getType(), dataPointer, "loaded_dp");
                Value* loadedByte = Builder->CreateLoad(i8, loadedPointer, "byte");
                Value* zero = ConstantInt::get(i8, 0);
                Value* test;
                if (c == '[') {
                    test = Builder->CreateICmpEQ(loadedByte, zero, "test");
                } else {
                    test = Builder->CreateICmpNE(loadedByte, zero, "test");
                }
                BasicBlock* nextBasicBlock = bracketInfo.basicBlock[i];
                Builder->CreateCondBr(test, bracketInfo.basicBlock[bracketInfo.match[i]], nextBasicBlock);
                theFunction->insert(theFunction->end(), nextBasicBlock);
                Builder->SetInsertPoint(nextBasicBlock);
            }
        }
    }

    Value* zero = ConstantInt::get(i32, 0);
    Builder->CreateRet(zero);
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cerr << "usage: " << argv[0] << " <source.bf>\n";
        return 1;
    }

    auto source = readFile(argv[1]);
    initializeLLVM();
    auto bracketInfo = analyseBrackets(source);
    compileProgram(source, bracketInfo);

    TheModule->print(outs(), nullptr);
}
