(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\01\7f\01\7f\60\00\00\60\00\01\7f\03\8a\80\80\80"
  "\00\09\00\00\00\00\00\00\01\01\02\06\98\80\80\80"
  "\00\04\70\01\d2\00\0b\63\00\01\d2\01\0b\64\00\01"
  "\d2\00\0b\64\00\00\d2\01\0b\07\da\80\80\80\00\07"
  "\0c\63\61\6c\6c\5f\66\75\6e\63\72\65\66\00\02\0a"
  "\63\61\6c\6c\5f\74\79\70\65\64\00\03\07\63\61\6c"
  "\6c\5f\6e\6e\00\04\08\63\61\6c\6c\5f\69\6d\6d\00"
  "\05\04\73\77\61\70\00\06\0e\73\65\74\5f\74\79\70"
  "\65\64\5f\6e\75\6c\6c\00\07\0d\74\79\70\65\64\5f"
  "\69\73\5f\6e\75\6c\6c\00\08\09\86\80\80\80\00\01"
  "\03\00\02\00\01\0a\80\81\80\80\00\09\87\80\80\80"
  "\00\00\20\00\41\01\6a\0b\87\80\80\80\00\00\20\00"
  "\41\02\6c\0b\8b\80\80\80\00\00\20\00\23\00\fb\16"
  "\00\14\00\0b\88\80\80\80\00\00\20\00\23\01\14\00"
  "\0b\88\80\80\80\00\00\20\00\23\02\14\00\0b\88\80"
  "\80\80\00\00\20\00\23\03\14\00\0b\96\80\80\80\00"
  "\01\01\64\00\23\02\21\00\23\01\d4\24\02\20\00\24"
  "\01\23\02\24\00\0b\86\80\80\80\00\00\d0\00\24\01"
  "\0b\85\80\80\80\00\00\23\01\d1\0b"
)
(module instance)
(assert_return (invoke "call_funcref" (i32.const 0x5)) (i32.const 0x6))
(assert_return (invoke "call_typed" (i32.const 0x5)) (i32.const 0xa))
(assert_return (invoke "call_nn" (i32.const 0x5)) (i32.const 0x6))
(assert_return (invoke "call_imm" (i32.const 0x5)) (i32.const 0xa))
(invoke "swap")
(assert_return (invoke "call_nn" (i32.const 0x7)) (i32.const 0xe))
(assert_return (invoke "call_typed" (i32.const 0x7)) (i32.const 0x8))
(assert_return (invoke "call_funcref" (i32.const 0x7)) (i32.const 0xe))
(invoke "set_typed_null")
(assert_return (invoke "typed_is_null") (i32.const 0x1))
(assert_trap (invoke "call_typed" (i32.const 0x1)) "null")
