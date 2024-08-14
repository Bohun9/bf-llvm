; ModuleID = 'examples/hello_world_opt.bc'
source_filename = "Brainfuck"

@data = local_unnamed_addr global [1024 x i8] zeroinitializer

declare void @putchar(i8) local_unnamed_addr

define noundef i32 @main() local_unnamed_addr {
entry:
  %byte = load i8, ptr @data, align 16
  %modified_byte21 = add i8 %byte, 8
  store i8 %modified_byte21, ptr @data, align 16
  %test = icmp eq i8 %modified_byte21, 0
  br i1 %test, label %close130, label %open

open:                                             ; preds = %entry, %close121
  %dp.0 = phi ptr [ %modified_dp123, %close121 ], [ @data, %entry ]
  %modified_dp = getelementptr ptr, ptr %dp.0, i64 1
  %byte26 = load i8, ptr %modified_dp, align 1
  %modified_byte36 = add i8 %byte26, 4
  store i8 %modified_byte36, ptr %modified_dp, align 1
  %test39 = icmp eq i8 %modified_byte36, 0
  %modified_dp91.phi.trans.insert = getelementptr ptr, ptr %dp.0, i64 2
  br i1 %test39, label %open.close_crit_edge, label %open40.preheader

open.close_crit_edge:                             ; preds = %open
  %byte93.pre = load i8, ptr %modified_dp91.phi.trans.insert, align 1
  %modified_dp96.phi.trans.insert = getelementptr ptr, ptr %dp.0, i64 3
  %byte98.pre = load i8, ptr %modified_dp96.phi.trans.insert, align 1
  %modified_dp101.phi.trans.insert = getelementptr ptr, ptr %dp.0, i64 4
  %byte103.pre = load i8, ptr %modified_dp101.phi.trans.insert, align 1
  br label %close

open40.preheader:                                 ; preds = %open
  %modified_dp50 = getelementptr ptr, ptr %dp.0, i64 3
  %modified_dp61 = getelementptr ptr, ptr %dp.0, i64 4
  %modified_dp72 = getelementptr ptr, ptr %dp.0, i64 5
  %modified_dp42.promoted = load i8, ptr %modified_dp91.phi.trans.insert, align 1
  %modified_dp50.promoted = load i8, ptr %modified_dp50, align 1
  %modified_dp61.promoted = load i8, ptr %modified_dp61, align 1
  %modified_dp72.promoted = load i8, ptr %modified_dp72, align 1
  %0 = shl i8 %modified_byte36, 1
  %1 = mul i8 %modified_byte36, 3
  %2 = add i8 %modified_dp61.promoted, %1
  %3 = add i8 %modified_dp42.promoted, %0
  %4 = add i8 %modified_dp50.promoted, %1
  %5 = add i8 %modified_byte36, %modified_dp72.promoted
  store i8 %5, ptr %modified_dp72, align 1
  store i8 0, ptr %modified_dp, align 1
  br label %close

close:                                            ; preds = %open.close_crit_edge, %open40.preheader
  %byte103 = phi i8 [ %byte103.pre, %open.close_crit_edge ], [ %2, %open40.preheader ]
  %byte98 = phi i8 [ %byte98.pre, %open.close_crit_edge ], [ %4, %open40.preheader ]
  %byte93 = phi i8 [ %byte93.pre, %open.close_crit_edge ], [ %3, %open40.preheader ]
  %modified_dp91 = getelementptr ptr, ptr %dp.0, i64 2
  %modified_byte94 = add i8 %byte93, 1
  store i8 %modified_byte94, ptr %modified_dp91, align 1
  %modified_dp96 = getelementptr ptr, ptr %dp.0, i64 3
  %modified_byte99 = add i8 %byte98, 1
  store i8 %modified_byte99, ptr %modified_dp96, align 1
  %modified_dp101 = getelementptr ptr, ptr %dp.0, i64 4
  %modified_byte104 = add i8 %byte103, -1
  store i8 %modified_byte104, ptr %modified_dp101, align 1
  %modified_dp108 = getelementptr ptr, ptr %dp.0, i64 6
  %byte110 = load i8, ptr %modified_dp108, align 1
  %modified_byte111 = add i8 %byte110, 1
  store i8 %modified_byte111, ptr %modified_dp108, align 1
  %test114 = icmp eq i8 %modified_byte111, 0
  br i1 %test114, label %close121, label %open115

open115:                                          ; preds = %close, %open115
  %dp.3 = phi ptr [ %modified_dp117, %open115 ], [ %modified_dp108, %close ]
  %modified_dp117 = getelementptr ptr, ptr %dp.3, i64 -1
  %byte119 = load i8, ptr %modified_dp117, align 1
  %test120.not = icmp eq i8 %byte119, 0
  br i1 %test120.not, label %close121, label %open115

close121:                                         ; preds = %open115, %close
  %dp.4 = phi ptr [ %modified_dp108, %close ], [ %modified_dp117, %open115 ]
  %modified_dp123 = getelementptr ptr, ptr %dp.4, i64 -1
  %byte125 = load i8, ptr %modified_dp123, align 1
  %modified_byte126 = add i8 %byte125, -1
  store i8 %modified_byte126, ptr %modified_dp123, align 1
  %test129.not = icmp eq i8 %modified_byte126, 0
  br i1 %test129.not, label %close130, label %open

close130:                                         ; preds = %close121, %entry
  %dp.5 = phi ptr [ @data, %entry ], [ %modified_dp123, %close121 ]
  %modified_dp134 = getelementptr ptr, ptr %dp.5, i64 2
  %byte136 = load i8, ptr %modified_dp134, align 1
  tail call void @putchar(i8 %byte136)
  %modified_dp138 = getelementptr ptr, ptr %dp.5, i64 3
  %byte140 = load i8, ptr %modified_dp138, align 1
  %modified_byte147 = add i8 %byte140, -3
  store i8 %modified_byte147, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte147)
  %byte151 = load i8, ptr %modified_dp138, align 1
  %modified_byte170 = add i8 %byte151, 7
  store i8 %modified_byte170, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte170)
  %byte174 = load i8, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %byte174)
  %byte176 = load i8, ptr %modified_dp138, align 1
  %modified_byte183 = add i8 %byte176, 3
  store i8 %modified_byte183, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte183)
  %modified_dp189 = getelementptr ptr, ptr %dp.5, i64 5
  %byte191 = load i8, ptr %modified_dp189, align 1
  tail call void @putchar(i8 %byte191)
  %modified_dp193 = getelementptr ptr, ptr %dp.5, i64 4
  %byte195 = load i8, ptr %modified_dp193, align 1
  %modified_byte196 = add i8 %byte195, -1
  store i8 %modified_byte196, ptr %modified_dp193, align 1
  tail call void @putchar(i8 %modified_byte196)
  %byte202 = load i8, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %byte202)
  %byte204 = load i8, ptr %modified_dp138, align 1
  %modified_byte211 = add i8 %byte204, 3
  store i8 %modified_byte211, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte211)
  %byte215 = load i8, ptr %modified_dp138, align 1
  %modified_byte231 = add i8 %byte215, -6
  store i8 %modified_byte231, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte231)
  %byte235 = load i8, ptr %modified_dp138, align 1
  %modified_byte257 = add i8 %byte235, -8
  store i8 %modified_byte257, ptr %modified_dp138, align 1
  tail call void @putchar(i8 %modified_byte257)
  %byte265 = load i8, ptr %modified_dp189, align 1
  %modified_byte266 = add i8 %byte265, 1
  store i8 %modified_byte266, ptr %modified_dp189, align 1
  tail call void @putchar(i8 %modified_byte266)
  %modified_dp270 = getelementptr ptr, ptr %dp.5, i64 6
  %byte272 = load i8, ptr %modified_dp270, align 1
  %modified_byte276 = add i8 %byte272, 2
  store i8 %modified_byte276, ptr %modified_dp270, align 1
  tail call void @putchar(i8 %modified_byte276)
  ret i32 0
}
