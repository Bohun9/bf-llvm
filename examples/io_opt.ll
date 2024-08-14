; ModuleID = 'examples/io_opt.bc'
source_filename = "Brainfuck"

@data = local_unnamed_addr global [1024 x i8] zeroinitializer

declare i8 @getchar() local_unnamed_addr

declare void @putchar(i8) local_unnamed_addr

define noundef i32 @main() local_unnamed_addr {
entry:
  %user_input = tail call i8 @getchar()
  store i8 %user_input, ptr @data, align 16
  tail call void @putchar(i8 %user_input)
  ret i32 0
}
