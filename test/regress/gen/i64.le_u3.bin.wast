(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\ef\80\80\80\00\05\91\80\80\80\00\00\42\e3\81\fa"
  "\fa\ce\01\42\e3\ed\8e\9e\cb\01\58\0b\91\80\80\80"
  "\00\00\42\e3\81\fa\fa\ce\01\42\e3\81\fa\fa\ce\01"
  "\58\0b\91\80\80\80\00\00\42\e3\81\fa\fa\ce\01\42"
  "\e3\95\e5\d7\d2\01\58\0b\91\80\80\80\00\00\42\9d"
  "\ea\9a\a8\ad\7e\42\9d\fe\85\85\b1\7e\58\0b\91\80"
  "\80\80\00\00\42\9d\fe\85\85\b1\7e\42\e3\95\e5\d7"
  "\d2\01\58\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x1))
(assert_return (invoke "m2") (i32.const 0x1))
(assert_return (invoke "m3") (i32.const 0x1))
(assert_return (invoke "m4") (i32.const 0x0))
