bf-llvm: bf-llvm.cpp
	clang++-18 -g bf-llvm.cpp `llvm-config-18 --cxxflags --ldflags --system-libs --libs all` -O3 -o bf-llvm

%: examples/%.bf bf-llvm
	./bf-llvm $< > examples/$@.ll
	opt-18 -O3 examples/$@.ll -o examples/$@_opt.bc
	llvm-dis-18 examples/$@_opt.bc -o examples/$@_opt.ll
	clang-18 examples/$@_opt.ll -o examples/$@
