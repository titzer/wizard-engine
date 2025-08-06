(module definition binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\08\60"
  "\00\00\5f\00\5e\78\00\60\01\6f\00\60\01\6f\01\6e"
  "\60\01\6e\01\6f\60\01\7f\01\6f\60\01\7f\01\6e\03"
  "\87\80\80\80\00\06\00\03\04\05\06\07\04\84\80\80"
  "\80\00\01\6e\00\0a\06\8f\80\80\80\00\02\6f\00\d0"
  "\6e\fb\1b\0b\6e\00\d0\6f\fb\1a\0b\07\c5\80\80\80"
  "\00\05\04\69\6e\69\74\00\01\0b\69\6e\74\65\72\6e"
  "\61\6c\69\7a\65\00\02\0b\65\78\74\65\72\6e\61\6c"
  "\69\7a\65\00\03\0d\65\78\74\65\72\6e\61\6c\69\7a"
  "\65\2d\69\00\04\0e\65\78\74\65\72\6e\61\6c\69\7a"
  "\65\2d\69\69\00\05\09\85\80\80\80\00\01\03\00\01"
  "\00\0a\e7\80\80\80\00\06\82\80\80\80\00\00\0b\a8"
  "\80\80\80\00\00\41\00\d0\6e\26\00\41\01\41\07\fb"
  "\1c\26\00\41\02\fb\01\01\26\00\41\03\41\00\fb\07"
  "\02\26\00\41\04\20\00\fb\1a\26\00\0b\86\80\80\80"
  "\00\00\20\00\fb\1a\0b\86\80\80\80\00\00\20\00\fb"
  "\1b\0b\88\80\80\80\00\00\20\00\25\00\fb\1b\0b\8a"
  "\80\80\80\00\00\20\00\25\00\fb\1b\fb\1a\0b"
)
(module instance)
(invoke "init" (ref.extern 0))
(assert_return (invoke "internalize" (ref.extern 1)) (ref.host 1))
(assert_return (invoke "internalize" (ref.null extern)) (ref.null any))
(assert_return (invoke "externalize" (ref.host 2)) (ref.extern 2))
(assert_return (invoke "externalize" (ref.null any)) (ref.null extern))
(assert_return (invoke "externalize-i" (i32.const 0x0)) (ref.null extern))
(assert_return (invoke "externalize-i" (i32.const 0x1)) (ref.extern))
(assert_return (invoke "externalize-i" (i32.const 0x2)) (ref.extern))
(assert_return (invoke "externalize-i" (i32.const 0x3)) (ref.extern))
(assert_return (invoke "externalize-i" (i32.const 0x4)) (ref.extern))
(assert_return (invoke "externalize-i" (i32.const 0x5)) (ref.null extern))
(assert_return (invoke "externalize-ii" (i32.const 0x0)) (ref.null any))
(assert_return (invoke "externalize-ii" (i32.const 0x1)) (ref.i31))
(assert_return (invoke "externalize-ii" (i32.const 0x2)) (ref.struct))
(assert_return (invoke "externalize-ii" (i32.const 0x3)) (ref.array))
(assert_return (invoke "externalize-ii" (i32.const 0x4)) (ref.host 0))
(assert_return (invoke "externalize-ii" (i32.const 0x5)) (ref.null any))
