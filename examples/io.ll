; ModuleID = 'Brainfuck'
source_filename = "Brainfuck"

@data = global [1024 x i8] zeroinitializer

declare i8 @getchar()

declare void @putchar(i8)

define i32 @main() {
entry:
  %dp = alloca ptr, align 8
  store ptr @data, ptr %dp, align 8
  %loaded_dp = load ptr, ptr %dp, align 8
  %user_input = call i8 @getchar()
  store i8 %user_input, ptr %loaded_dp, align 1
  %loaded_dp1 = load ptr, ptr %dp, align 8
  %byte = load i8, ptr %loaded_dp1, align 1
  call void @putchar(i8 %byte)
  ret i32 0
}
