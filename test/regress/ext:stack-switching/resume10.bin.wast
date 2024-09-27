(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\01\6f\01\6f\5d\00\03\83\80\80\80\00\02\00\00\07"
  "\8c\80\80\80\00\01\08\63\61\6c\6c\5f\65\5f\65\00"
  "\01\09\85\80\80\80\00\01\03\00\01\00\0a\9a\80\80"
  "\80\00\02\84\80\80\80\00\00\20\00\0b\8b\80\80\80"
  "\00\00\20\00\d2\00\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return (invoke "call_e_e" (ref.extern 0)) (ref.extern 0))
(assert_return (invoke "call_e_e" (ref.extern 1)) (ref.extern 1))
