(module definition binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\05\60"
  "\01\7f\01\7f\5d\00\60\00\00\60\00\02\7f\64\01\60"
  "\00\01\7f\03\8b\80\80\80\00\0a\00\02\00\02\00\00"
  "\00\04\04\00\0d\83\80\80\80\00\01\00\00\06\98\80"
  "\80\80\00\04\63\01\01\d0\01\0b\63\01\01\d0\01\0b"
  "\63\01\01\d0\01\0b\68\01\d0\68\0b\07\c8\80\80\80"
  "\00\07\03\6e\65\77\00\03\04\73\74\65\70\00\04\0a"
  "\72\65\73\75\6d\65\5f\6f\6c\64\00\05\09\72\65\73"
  "\75\6d\65\5f\6b\32\00\06\09\6b\5f\69\73\5f\6e\75"
  "\6c\6c\00\07\0b\61\6e\79\5f\69\73\5f\6e\75\6c\6c"
  "\00\08\04\6c\6f\6f\70\00\09\09\85\80\80\80\00\01"
  "\03\00\01\00\0a\cb\81\80\80\00\0a\8d\80\80\80\00"
  "\00\20\00\41\01\6a\e2\00\41\e4\00\6a\0b\88\80\80"
  "\80\00\00\d2\00\e0\01\24\00\0b\9e\80\80\80\00\00"
  "\23\00\24\01\02\03\20\00\23\00\e3\01\01\00\00\00"
  "\0f\0b\24\00\23\00\24\02\23\00\24\03\0b\84\80\80"
  "\80\00\00\10\01\0b\86\80\80\80\00\00\20\00\10\02"
  "\0b\89\80\80\80\00\00\20\00\23\01\e3\01\00\0b\89"
  "\80\80\80\00\00\20\00\23\02\e3\01\00\0b\85\80\80"
  "\80\00\00\23\00\d1\0b\85\80\80\80\00\00\23\03\d1"
  "\0b\bf\80\80\80\00\01\01\7f\03\40\10\01\20\01\10"
  "\02\20\01\41\01\6a\47\04\40\20\01\41\01\6a\0f\0b"
  "\20\01\10\02\20\01\41\e4\00\6a\47\04\40\20\01\41"
  "\e9\07\6a\0f\0b\20\01\41\01\6a\22\01\20\00\49\0d"
  "\00\0b\41\00\0b"
)
(module instance)
(assert_return (invoke "k_is_null") (i32.const 0x1))
(assert_return (invoke "any_is_null") (i32.const 0x1))
(invoke "new")
(assert_return (invoke "step" (i32.const 0x5)) (i32.const 0x6))
(assert_return (invoke "any_is_null") (i32.const 0x0))
(assert_trap
  (invoke "resume_old" (i32.const 0x0))
  "continuation already consumed"
)
(assert_return (invoke "resume_k2" (i32.const 0x7)) (i32.const 0x6b))
(assert_trap (invoke "step" (i32.const 0x0)) "continuation already consumed")
(assert_return (invoke "loop" (i32.const 0x64)) (i32.const 0x0))
(assert_trap
  (invoke "resume_old" (i32.const 0x0))
  "continuation already consumed"
)
(invoke "new")
(assert_return (invoke "step" (i32.const 0x1)) (i32.const 0x2))
(assert_trap
  (invoke "resume_old" (i32.const 0x0))
  "continuation already consumed"
)
(assert_return (invoke "resume_k2" (i32.const 0x1)) (i32.const 0x65))
