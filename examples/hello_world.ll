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
  %byte = load i8, ptr %loaded_dp, align 1
  %modified_byte = add i8 %byte, 1
  store i8 %modified_byte, ptr %loaded_dp, align 1
  %loaded_dp1 = load ptr, ptr %dp, align 8
  %byte2 = load i8, ptr %loaded_dp1, align 1
  %modified_byte3 = add i8 %byte2, 1
  store i8 %modified_byte3, ptr %loaded_dp1, align 1
  %loaded_dp4 = load ptr, ptr %dp, align 8
  %byte5 = load i8, ptr %loaded_dp4, align 1
  %modified_byte6 = add i8 %byte5, 1
  store i8 %modified_byte6, ptr %loaded_dp4, align 1
  %loaded_dp7 = load ptr, ptr %dp, align 8
  %byte8 = load i8, ptr %loaded_dp7, align 1
  %modified_byte9 = add i8 %byte8, 1
  store i8 %modified_byte9, ptr %loaded_dp7, align 1
  %loaded_dp10 = load ptr, ptr %dp, align 8
  %byte11 = load i8, ptr %loaded_dp10, align 1
  %modified_byte12 = add i8 %byte11, 1
  store i8 %modified_byte12, ptr %loaded_dp10, align 1
  %loaded_dp13 = load ptr, ptr %dp, align 8
  %byte14 = load i8, ptr %loaded_dp13, align 1
  %modified_byte15 = add i8 %byte14, 1
  store i8 %modified_byte15, ptr %loaded_dp13, align 1
  %loaded_dp16 = load ptr, ptr %dp, align 8
  %byte17 = load i8, ptr %loaded_dp16, align 1
  %modified_byte18 = add i8 %byte17, 1
  store i8 %modified_byte18, ptr %loaded_dp16, align 1
  %loaded_dp19 = load ptr, ptr %dp, align 8
  %byte20 = load i8, ptr %loaded_dp19, align 1
  %modified_byte21 = add i8 %byte20, 1
  store i8 %modified_byte21, ptr %loaded_dp19, align 1
  %loaded_dp22 = load ptr, ptr %dp, align 8
  %byte23 = load i8, ptr %loaded_dp22, align 1
  %test = icmp eq i8 %byte23, 0
  br i1 %test, label %close130, label %open

open:                                             ; preds = %close121, %entry
  %loaded_dp24 = load ptr, ptr %dp, align 8
  %modified_dp = getelementptr ptr, ptr %loaded_dp24, i8 1
  store ptr %modified_dp, ptr %dp, align 8
  %loaded_dp25 = load ptr, ptr %dp, align 8
  %byte26 = load i8, ptr %loaded_dp25, align 1
  %modified_byte27 = add i8 %byte26, 1
  store i8 %modified_byte27, ptr %loaded_dp25, align 1
  %loaded_dp28 = load ptr, ptr %dp, align 8
  %byte29 = load i8, ptr %loaded_dp28, align 1
  %modified_byte30 = add i8 %byte29, 1
  store i8 %modified_byte30, ptr %loaded_dp28, align 1
  %loaded_dp31 = load ptr, ptr %dp, align 8
  %byte32 = load i8, ptr %loaded_dp31, align 1
  %modified_byte33 = add i8 %byte32, 1
  store i8 %modified_byte33, ptr %loaded_dp31, align 1
  %loaded_dp34 = load ptr, ptr %dp, align 8
  %byte35 = load i8, ptr %loaded_dp34, align 1
  %modified_byte36 = add i8 %byte35, 1
  store i8 %modified_byte36, ptr %loaded_dp34, align 1
  %loaded_dp37 = load ptr, ptr %dp, align 8
  %byte38 = load i8, ptr %loaded_dp37, align 1
  %test39 = icmp eq i8 %byte38, 0
  br i1 %test39, label %close, label %open40

open40:                                           ; preds = %open40, %open
  %loaded_dp41 = load ptr, ptr %dp, align 8
  %modified_dp42 = getelementptr ptr, ptr %loaded_dp41, i8 1
  store ptr %modified_dp42, ptr %dp, align 8
  %loaded_dp43 = load ptr, ptr %dp, align 8
  %byte44 = load i8, ptr %loaded_dp43, align 1
  %modified_byte45 = add i8 %byte44, 1
  store i8 %modified_byte45, ptr %loaded_dp43, align 1
  %loaded_dp46 = load ptr, ptr %dp, align 8
  %byte47 = load i8, ptr %loaded_dp46, align 1
  %modified_byte48 = add i8 %byte47, 1
  store i8 %modified_byte48, ptr %loaded_dp46, align 1
  %loaded_dp49 = load ptr, ptr %dp, align 8
  %modified_dp50 = getelementptr ptr, ptr %loaded_dp49, i8 1
  store ptr %modified_dp50, ptr %dp, align 8
  %loaded_dp51 = load ptr, ptr %dp, align 8
  %byte52 = load i8, ptr %loaded_dp51, align 1
  %modified_byte53 = add i8 %byte52, 1
  store i8 %modified_byte53, ptr %loaded_dp51, align 1
  %loaded_dp54 = load ptr, ptr %dp, align 8
  %byte55 = load i8, ptr %loaded_dp54, align 1
  %modified_byte56 = add i8 %byte55, 1
  store i8 %modified_byte56, ptr %loaded_dp54, align 1
  %loaded_dp57 = load ptr, ptr %dp, align 8
  %byte58 = load i8, ptr %loaded_dp57, align 1
  %modified_byte59 = add i8 %byte58, 1
  store i8 %modified_byte59, ptr %loaded_dp57, align 1
  %loaded_dp60 = load ptr, ptr %dp, align 8
  %modified_dp61 = getelementptr ptr, ptr %loaded_dp60, i8 1
  store ptr %modified_dp61, ptr %dp, align 8
  %loaded_dp62 = load ptr, ptr %dp, align 8
  %byte63 = load i8, ptr %loaded_dp62, align 1
  %modified_byte64 = add i8 %byte63, 1
  store i8 %modified_byte64, ptr %loaded_dp62, align 1
  %loaded_dp65 = load ptr, ptr %dp, align 8
  %byte66 = load i8, ptr %loaded_dp65, align 1
  %modified_byte67 = add i8 %byte66, 1
  store i8 %modified_byte67, ptr %loaded_dp65, align 1
  %loaded_dp68 = load ptr, ptr %dp, align 8
  %byte69 = load i8, ptr %loaded_dp68, align 1
  %modified_byte70 = add i8 %byte69, 1
  store i8 %modified_byte70, ptr %loaded_dp68, align 1
  %loaded_dp71 = load ptr, ptr %dp, align 8
  %modified_dp72 = getelementptr ptr, ptr %loaded_dp71, i8 1
  store ptr %modified_dp72, ptr %dp, align 8
  %loaded_dp73 = load ptr, ptr %dp, align 8
  %byte74 = load i8, ptr %loaded_dp73, align 1
  %modified_byte75 = add i8 %byte74, 1
  store i8 %modified_byte75, ptr %loaded_dp73, align 1
  %loaded_dp76 = load ptr, ptr %dp, align 8
  %modified_dp77 = getelementptr ptr, ptr %loaded_dp76, i8 -1
  store ptr %modified_dp77, ptr %dp, align 8
  %loaded_dp78 = load ptr, ptr %dp, align 8
  %modified_dp79 = getelementptr ptr, ptr %loaded_dp78, i8 -1
  store ptr %modified_dp79, ptr %dp, align 8
  %loaded_dp80 = load ptr, ptr %dp, align 8
  %modified_dp81 = getelementptr ptr, ptr %loaded_dp80, i8 -1
  store ptr %modified_dp81, ptr %dp, align 8
  %loaded_dp82 = load ptr, ptr %dp, align 8
  %modified_dp83 = getelementptr ptr, ptr %loaded_dp82, i8 -1
  store ptr %modified_dp83, ptr %dp, align 8
  %loaded_dp84 = load ptr, ptr %dp, align 8
  %byte85 = load i8, ptr %loaded_dp84, align 1
  %modified_byte86 = add i8 %byte85, -1
  store i8 %modified_byte86, ptr %loaded_dp84, align 1
  %loaded_dp87 = load ptr, ptr %dp, align 8
  %byte88 = load i8, ptr %loaded_dp87, align 1
  %test89 = icmp ne i8 %byte88, 0
  br i1 %test89, label %open40, label %close

close:                                            ; preds = %open40, %open
  %loaded_dp90 = load ptr, ptr %dp, align 8
  %modified_dp91 = getelementptr ptr, ptr %loaded_dp90, i8 1
  store ptr %modified_dp91, ptr %dp, align 8
  %loaded_dp92 = load ptr, ptr %dp, align 8
  %byte93 = load i8, ptr %loaded_dp92, align 1
  %modified_byte94 = add i8 %byte93, 1
  store i8 %modified_byte94, ptr %loaded_dp92, align 1
  %loaded_dp95 = load ptr, ptr %dp, align 8
  %modified_dp96 = getelementptr ptr, ptr %loaded_dp95, i8 1
  store ptr %modified_dp96, ptr %dp, align 8
  %loaded_dp97 = load ptr, ptr %dp, align 8
  %byte98 = load i8, ptr %loaded_dp97, align 1
  %modified_byte99 = add i8 %byte98, 1
  store i8 %modified_byte99, ptr %loaded_dp97, align 1
  %loaded_dp100 = load ptr, ptr %dp, align 8
  %modified_dp101 = getelementptr ptr, ptr %loaded_dp100, i8 1
  store ptr %modified_dp101, ptr %dp, align 8
  %loaded_dp102 = load ptr, ptr %dp, align 8
  %byte103 = load i8, ptr %loaded_dp102, align 1
  %modified_byte104 = add i8 %byte103, -1
  store i8 %modified_byte104, ptr %loaded_dp102, align 1
  %loaded_dp105 = load ptr, ptr %dp, align 8
  %modified_dp106 = getelementptr ptr, ptr %loaded_dp105, i8 1
  store ptr %modified_dp106, ptr %dp, align 8
  %loaded_dp107 = load ptr, ptr %dp, align 8
  %modified_dp108 = getelementptr ptr, ptr %loaded_dp107, i8 1
  store ptr %modified_dp108, ptr %dp, align 8
  %loaded_dp109 = load ptr, ptr %dp, align 8
  %byte110 = load i8, ptr %loaded_dp109, align 1
  %modified_byte111 = add i8 %byte110, 1
  store i8 %modified_byte111, ptr %loaded_dp109, align 1
  %loaded_dp112 = load ptr, ptr %dp, align 8
  %byte113 = load i8, ptr %loaded_dp112, align 1
  %test114 = icmp eq i8 %byte113, 0
  br i1 %test114, label %close121, label %open115

open115:                                          ; preds = %open115, %close
  %loaded_dp116 = load ptr, ptr %dp, align 8
  %modified_dp117 = getelementptr ptr, ptr %loaded_dp116, i8 -1
  store ptr %modified_dp117, ptr %dp, align 8
  %loaded_dp118 = load ptr, ptr %dp, align 8
  %byte119 = load i8, ptr %loaded_dp118, align 1
  %test120 = icmp ne i8 %byte119, 0
  br i1 %test120, label %open115, label %close121

close121:                                         ; preds = %open115, %close
  %loaded_dp122 = load ptr, ptr %dp, align 8
  %modified_dp123 = getelementptr ptr, ptr %loaded_dp122, i8 -1
  store ptr %modified_dp123, ptr %dp, align 8
  %loaded_dp124 = load ptr, ptr %dp, align 8
  %byte125 = load i8, ptr %loaded_dp124, align 1
  %modified_byte126 = add i8 %byte125, -1
  store i8 %modified_byte126, ptr %loaded_dp124, align 1
  %loaded_dp127 = load ptr, ptr %dp, align 8
  %byte128 = load i8, ptr %loaded_dp127, align 1
  %test129 = icmp ne i8 %byte128, 0
  br i1 %test129, label %open, label %close130

close130:                                         ; preds = %close121, %entry
  %loaded_dp131 = load ptr, ptr %dp, align 8
  %modified_dp132 = getelementptr ptr, ptr %loaded_dp131, i8 1
  store ptr %modified_dp132, ptr %dp, align 8
  %loaded_dp133 = load ptr, ptr %dp, align 8
  %modified_dp134 = getelementptr ptr, ptr %loaded_dp133, i8 1
  store ptr %modified_dp134, ptr %dp, align 8
  %loaded_dp135 = load ptr, ptr %dp, align 8
  %byte136 = load i8, ptr %loaded_dp135, align 1
  call void @putchar(i8 %byte136)
  %loaded_dp137 = load ptr, ptr %dp, align 8
  %modified_dp138 = getelementptr ptr, ptr %loaded_dp137, i8 1
  store ptr %modified_dp138, ptr %dp, align 8
  %loaded_dp139 = load ptr, ptr %dp, align 8
  %byte140 = load i8, ptr %loaded_dp139, align 1
  %modified_byte141 = add i8 %byte140, -1
  store i8 %modified_byte141, ptr %loaded_dp139, align 1
  %loaded_dp142 = load ptr, ptr %dp, align 8
  %byte143 = load i8, ptr %loaded_dp142, align 1
  %modified_byte144 = add i8 %byte143, -1
  store i8 %modified_byte144, ptr %loaded_dp142, align 1
  %loaded_dp145 = load ptr, ptr %dp, align 8
  %byte146 = load i8, ptr %loaded_dp145, align 1
  %modified_byte147 = add i8 %byte146, -1
  store i8 %modified_byte147, ptr %loaded_dp145, align 1
  %loaded_dp148 = load ptr, ptr %dp, align 8
  %byte149 = load i8, ptr %loaded_dp148, align 1
  call void @putchar(i8 %byte149)
  %loaded_dp150 = load ptr, ptr %dp, align 8
  %byte151 = load i8, ptr %loaded_dp150, align 1
  %modified_byte152 = add i8 %byte151, 1
  store i8 %modified_byte152, ptr %loaded_dp150, align 1
  %loaded_dp153 = load ptr, ptr %dp, align 8
  %byte154 = load i8, ptr %loaded_dp153, align 1
  %modified_byte155 = add i8 %byte154, 1
  store i8 %modified_byte155, ptr %loaded_dp153, align 1
  %loaded_dp156 = load ptr, ptr %dp, align 8
  %byte157 = load i8, ptr %loaded_dp156, align 1
  %modified_byte158 = add i8 %byte157, 1
  store i8 %modified_byte158, ptr %loaded_dp156, align 1
  %loaded_dp159 = load ptr, ptr %dp, align 8
  %byte160 = load i8, ptr %loaded_dp159, align 1
  %modified_byte161 = add i8 %byte160, 1
  store i8 %modified_byte161, ptr %loaded_dp159, align 1
  %loaded_dp162 = load ptr, ptr %dp, align 8
  %byte163 = load i8, ptr %loaded_dp162, align 1
  %modified_byte164 = add i8 %byte163, 1
  store i8 %modified_byte164, ptr %loaded_dp162, align 1
  %loaded_dp165 = load ptr, ptr %dp, align 8
  %byte166 = load i8, ptr %loaded_dp165, align 1
  %modified_byte167 = add i8 %byte166, 1
  store i8 %modified_byte167, ptr %loaded_dp165, align 1
  %loaded_dp168 = load ptr, ptr %dp, align 8
  %byte169 = load i8, ptr %loaded_dp168, align 1
  %modified_byte170 = add i8 %byte169, 1
  store i8 %modified_byte170, ptr %loaded_dp168, align 1
  %loaded_dp171 = load ptr, ptr %dp, align 8
  %byte172 = load i8, ptr %loaded_dp171, align 1
  call void @putchar(i8 %byte172)
  %loaded_dp173 = load ptr, ptr %dp, align 8
  %byte174 = load i8, ptr %loaded_dp173, align 1
  call void @putchar(i8 %byte174)
  %loaded_dp175 = load ptr, ptr %dp, align 8
  %byte176 = load i8, ptr %loaded_dp175, align 1
  %modified_byte177 = add i8 %byte176, 1
  store i8 %modified_byte177, ptr %loaded_dp175, align 1
  %loaded_dp178 = load ptr, ptr %dp, align 8
  %byte179 = load i8, ptr %loaded_dp178, align 1
  %modified_byte180 = add i8 %byte179, 1
  store i8 %modified_byte180, ptr %loaded_dp178, align 1
  %loaded_dp181 = load ptr, ptr %dp, align 8
  %byte182 = load i8, ptr %loaded_dp181, align 1
  %modified_byte183 = add i8 %byte182, 1
  store i8 %modified_byte183, ptr %loaded_dp181, align 1
  %loaded_dp184 = load ptr, ptr %dp, align 8
  %byte185 = load i8, ptr %loaded_dp184, align 1
  call void @putchar(i8 %byte185)
  %loaded_dp186 = load ptr, ptr %dp, align 8
  %modified_dp187 = getelementptr ptr, ptr %loaded_dp186, i8 1
  store ptr %modified_dp187, ptr %dp, align 8
  %loaded_dp188 = load ptr, ptr %dp, align 8
  %modified_dp189 = getelementptr ptr, ptr %loaded_dp188, i8 1
  store ptr %modified_dp189, ptr %dp, align 8
  %loaded_dp190 = load ptr, ptr %dp, align 8
  %byte191 = load i8, ptr %loaded_dp190, align 1
  call void @putchar(i8 %byte191)
  %loaded_dp192 = load ptr, ptr %dp, align 8
  %modified_dp193 = getelementptr ptr, ptr %loaded_dp192, i8 -1
  store ptr %modified_dp193, ptr %dp, align 8
  %loaded_dp194 = load ptr, ptr %dp, align 8
  %byte195 = load i8, ptr %loaded_dp194, align 1
  %modified_byte196 = add i8 %byte195, -1
  store i8 %modified_byte196, ptr %loaded_dp194, align 1
  %loaded_dp197 = load ptr, ptr %dp, align 8
  %byte198 = load i8, ptr %loaded_dp197, align 1
  call void @putchar(i8 %byte198)
  %loaded_dp199 = load ptr, ptr %dp, align 8
  %modified_dp200 = getelementptr ptr, ptr %loaded_dp199, i8 -1
  store ptr %modified_dp200, ptr %dp, align 8
  %loaded_dp201 = load ptr, ptr %dp, align 8
  %byte202 = load i8, ptr %loaded_dp201, align 1
  call void @putchar(i8 %byte202)
  %loaded_dp203 = load ptr, ptr %dp, align 8
  %byte204 = load i8, ptr %loaded_dp203, align 1
  %modified_byte205 = add i8 %byte204, 1
  store i8 %modified_byte205, ptr %loaded_dp203, align 1
  %loaded_dp206 = load ptr, ptr %dp, align 8
  %byte207 = load i8, ptr %loaded_dp206, align 1
  %modified_byte208 = add i8 %byte207, 1
  store i8 %modified_byte208, ptr %loaded_dp206, align 1
  %loaded_dp209 = load ptr, ptr %dp, align 8
  %byte210 = load i8, ptr %loaded_dp209, align 1
  %modified_byte211 = add i8 %byte210, 1
  store i8 %modified_byte211, ptr %loaded_dp209, align 1
  %loaded_dp212 = load ptr, ptr %dp, align 8
  %byte213 = load i8, ptr %loaded_dp212, align 1
  call void @putchar(i8 %byte213)
  %loaded_dp214 = load ptr, ptr %dp, align 8
  %byte215 = load i8, ptr %loaded_dp214, align 1
  %modified_byte216 = add i8 %byte215, -1
  store i8 %modified_byte216, ptr %loaded_dp214, align 1
  %loaded_dp217 = load ptr, ptr %dp, align 8
  %byte218 = load i8, ptr %loaded_dp217, align 1
  %modified_byte219 = add i8 %byte218, -1
  store i8 %modified_byte219, ptr %loaded_dp217, align 1
  %loaded_dp220 = load ptr, ptr %dp, align 8
  %byte221 = load i8, ptr %loaded_dp220, align 1
  %modified_byte222 = add i8 %byte221, -1
  store i8 %modified_byte222, ptr %loaded_dp220, align 1
  %loaded_dp223 = load ptr, ptr %dp, align 8
  %byte224 = load i8, ptr %loaded_dp223, align 1
  %modified_byte225 = add i8 %byte224, -1
  store i8 %modified_byte225, ptr %loaded_dp223, align 1
  %loaded_dp226 = load ptr, ptr %dp, align 8
  %byte227 = load i8, ptr %loaded_dp226, align 1
  %modified_byte228 = add i8 %byte227, -1
  store i8 %modified_byte228, ptr %loaded_dp226, align 1
  %loaded_dp229 = load ptr, ptr %dp, align 8
  %byte230 = load i8, ptr %loaded_dp229, align 1
  %modified_byte231 = add i8 %byte230, -1
  store i8 %modified_byte231, ptr %loaded_dp229, align 1
  %loaded_dp232 = load ptr, ptr %dp, align 8
  %byte233 = load i8, ptr %loaded_dp232, align 1
  call void @putchar(i8 %byte233)
  %loaded_dp234 = load ptr, ptr %dp, align 8
  %byte235 = load i8, ptr %loaded_dp234, align 1
  %modified_byte236 = add i8 %byte235, -1
  store i8 %modified_byte236, ptr %loaded_dp234, align 1
  %loaded_dp237 = load ptr, ptr %dp, align 8
  %byte238 = load i8, ptr %loaded_dp237, align 1
  %modified_byte239 = add i8 %byte238, -1
  store i8 %modified_byte239, ptr %loaded_dp237, align 1
  %loaded_dp240 = load ptr, ptr %dp, align 8
  %byte241 = load i8, ptr %loaded_dp240, align 1
  %modified_byte242 = add i8 %byte241, -1
  store i8 %modified_byte242, ptr %loaded_dp240, align 1
  %loaded_dp243 = load ptr, ptr %dp, align 8
  %byte244 = load i8, ptr %loaded_dp243, align 1
  %modified_byte245 = add i8 %byte244, -1
  store i8 %modified_byte245, ptr %loaded_dp243, align 1
  %loaded_dp246 = load ptr, ptr %dp, align 8
  %byte247 = load i8, ptr %loaded_dp246, align 1
  %modified_byte248 = add i8 %byte247, -1
  store i8 %modified_byte248, ptr %loaded_dp246, align 1
  %loaded_dp249 = load ptr, ptr %dp, align 8
  %byte250 = load i8, ptr %loaded_dp249, align 1
  %modified_byte251 = add i8 %byte250, -1
  store i8 %modified_byte251, ptr %loaded_dp249, align 1
  %loaded_dp252 = load ptr, ptr %dp, align 8
  %byte253 = load i8, ptr %loaded_dp252, align 1
  %modified_byte254 = add i8 %byte253, -1
  store i8 %modified_byte254, ptr %loaded_dp252, align 1
  %loaded_dp255 = load ptr, ptr %dp, align 8
  %byte256 = load i8, ptr %loaded_dp255, align 1
  %modified_byte257 = add i8 %byte256, -1
  store i8 %modified_byte257, ptr %loaded_dp255, align 1
  %loaded_dp258 = load ptr, ptr %dp, align 8
  %byte259 = load i8, ptr %loaded_dp258, align 1
  call void @putchar(i8 %byte259)
  %loaded_dp260 = load ptr, ptr %dp, align 8
  %modified_dp261 = getelementptr ptr, ptr %loaded_dp260, i8 1
  store ptr %modified_dp261, ptr %dp, align 8
  %loaded_dp262 = load ptr, ptr %dp, align 8
  %modified_dp263 = getelementptr ptr, ptr %loaded_dp262, i8 1
  store ptr %modified_dp263, ptr %dp, align 8
  %loaded_dp264 = load ptr, ptr %dp, align 8
  %byte265 = load i8, ptr %loaded_dp264, align 1
  %modified_byte266 = add i8 %byte265, 1
  store i8 %modified_byte266, ptr %loaded_dp264, align 1
  %loaded_dp267 = load ptr, ptr %dp, align 8
  %byte268 = load i8, ptr %loaded_dp267, align 1
  call void @putchar(i8 %byte268)
  %loaded_dp269 = load ptr, ptr %dp, align 8
  %modified_dp270 = getelementptr ptr, ptr %loaded_dp269, i8 1
  store ptr %modified_dp270, ptr %dp, align 8
  %loaded_dp271 = load ptr, ptr %dp, align 8
  %byte272 = load i8, ptr %loaded_dp271, align 1
  %modified_byte273 = add i8 %byte272, 1
  store i8 %modified_byte273, ptr %loaded_dp271, align 1
  %loaded_dp274 = load ptr, ptr %dp, align 8
  %byte275 = load i8, ptr %loaded_dp274, align 1
  %modified_byte276 = add i8 %byte275, 1
  store i8 %modified_byte276, ptr %loaded_dp274, align 1
  %loaded_dp277 = load ptr, ptr %dp, align 8
  %byte278 = load i8, ptr %loaded_dp277, align 1
  call void @putchar(i8 %byte278)
  ret i32 0
}
