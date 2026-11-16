(module binary
  "\00\61\73\6d\01\00\00\00\01\a9\80\80\80\00\02\60"
  "\10\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f"
  "\7f\01\7f\60\10\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f\7f"
  "\7f\7f\7f\7f\7f\01\7f\03\82\80\80\80\00\01\00\05"
  "\83\80\80\80\00\01\00\01\07\88\80\80\80\00\01\04"
  "\6d\61\69\6e\00\00\0e\83\80\80\80\00\01\00\00\0a"
  "\b1\80\80\80\00\01\2f\00\20\00\20\01\20\02\20\03"
  "\20\04\20\05\20\06\20\07\20\08\20\09\20\0a\20\0b"
  "\20\0c\20\0d\20\0e\20\0f\41\10\41\de\00\fb\27\00"
  "\00\01\00\14\01\0b\0b\e4\80\80\80\00\01\00\41\10"
  "\0b\5e\00\20\00\41\1f\6c\20\01\6a\41\1f\6c\20\02"
  "\6a\41\1f\6c\20\03\6a\41\1f\6c\20\04\6a\41\1f\6c"
  "\20\05\6a\41\1f\6c\20\06\6a\41\1f\6c\20\07\6a\41"
  "\1f\6c\20\08\6a\41\1f\6c\20\09\6a\41\1f\6c\20\0a"
  "\6a\41\1f\6c\20\0b\6a\41\1f\6c\20\0c\6a\41\1f\6c"
  "\20\0d\6a\41\1f\6c\20\0e\6a\41\1f\6c\20\0f\6a\0b"
)
(assert_return (invoke "main" (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "main" (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 7)) (i32.const 7))
(assert_return (invoke "main" (i32.const 1) (i32.const 2) (i32.const 3) (i32.const 4) (i32.const 5) (i32.const 6) (i32.const 7) (i32.const 8) (i32.const 9) (i32.const 10) (i32.const 11) (i32.const 12) (i32.const 13) (i32.const 14) (i32.const 15) (i32.const 16)) (i32.const -1270509304))
(assert_return (invoke "main" (i32.const 16) (i32.const 15) (i32.const 14) (i32.const 13) (i32.const 12) (i32.const 11) (i32.const 10) (i32.const 9) (i32.const 8) (i32.const 7) (i32.const 6) (i32.const 5) (i32.const 4) (i32.const 3) (i32.const 2) (i32.const 1)) (i32.const 319397880))
