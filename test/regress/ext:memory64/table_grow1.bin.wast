(module definition binary
  "\00\61\73\6d\01\00\00\00\01\99\80\80\80\00\05\60"
  "\01\7e\01\6f\60\02\7e\6f\00\60\02\7e\6f\01\7e\60"
  "\00\01\7e\60\01\7e\00\03\86\80\80\80\00\05\00\01"
  "\02\03\04\04\84\80\80\80\00\01\6f\04\00\07\ab\80"
  "\80\80\00\04\07\67\65\74\2d\74\36\34\00\00\07\73"
  "\65\74\2d\74\36\34\00\01\08\67\72\6f\77\2d\74\36"
  "\34\00\02\08\73\69\7a\65\2d\74\36\34\00\03\0a\e4"
  "\80\80\80\00\05\86\80\80\80\00\00\20\00\25\00\0b"
  "\88\80\80\80\00\00\20\00\20\01\26\00\0b\b5\80\80"
  "\80\00\01\01\7e\42\91\b2\a2\bc\d7\9b\f3\dd\aa\7f"
  "\21\02\42\88\ef\99\ab\c5\e8\8c\91\11\10\04\20\01"
  "\20\00\fc\0f\00\21\02\42\91\c4\cc\a1\d4\ca\d9\bb"
  "\88\7f\10\04\20\02\0b\85\80\80\80\00\00\fc\10\00"
  "\0b\82\80\80\80\00\00\0b"
)
(module instance)
(assert_return (invoke "size-t64") (i64.const 0x0))
(assert_trap
  (invoke "set-t64" (i64.const 0x0) (ref.extern 2))
  "out of bounds table access"
)
(assert_trap (invoke "get-t64" (i64.const 0x0)) "out of bounds table access")
(assert_return
  (invoke "grow-t64" (i64.const 0x1) (ref.null extern))
  (i64.const 0x0)
)
(assert_return (invoke "size-t64") (i64.const 0x1))
(assert_return (invoke "get-t64" (i64.const 0x0)) (ref.null extern))
(assert_return (invoke "set-t64" (i64.const 0x0) (ref.extern 2)))
(assert_return (invoke "get-t64" (i64.const 0x0)) (ref.extern 2))
(assert_trap
  (invoke "set-t64" (i64.const 0x1) (ref.extern 2))
  "out of bounds table access"
)
(assert_trap (invoke "get-t64" (i64.const 0x1)) "out of bounds table access")
(assert_return
  (invoke "grow-t64" (i64.const 0x4) (ref.extern 3))
  (i64.const 0x1)
)
(assert_return (invoke "size-t64") (i64.const 0x5))
(assert_return (invoke "get-t64" (i64.const 0x0)) (ref.extern 2))
(assert_return (invoke "set-t64" (i64.const 0x0) (ref.extern 2)))
(assert_return (invoke "get-t64" (i64.const 0x0)) (ref.extern 2))
(assert_return (invoke "get-t64" (i64.const 0x1)) (ref.extern 3))
(assert_return (invoke "get-t64" (i64.const 0x4)) (ref.extern 3))
(assert_return (invoke "set-t64" (i64.const 0x4) (ref.extern 4)))
(assert_return (invoke "get-t64" (i64.const 0x4)) (ref.extern 4))
(assert_trap
  (invoke "set-t64" (i64.const 0x5) (ref.extern 2))
  "out of bounds table access"
)
(assert_trap (invoke "get-t64" (i64.const 0x5)) "out of bounds table access")
