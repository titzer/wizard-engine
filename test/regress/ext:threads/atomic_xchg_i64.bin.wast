(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\00\60\00\01\7e\03\86\80\80\80\00\05\00\01\01"
  "\01\01\05\83\80\80\80\00\01\00\01\07\f5\80\80\80"
  "\00\06\06\6d\65\6d\6f\72\79\02\00\04\6d\61\69\6e"
  "\00\00\14\74\65\73\74\5f\69\36\34\5f\61\74\6f\6d"
  "\69\63\5f\78\63\68\67\00\01\16\74\65\73\74\5f\69"
  "\36\34\5f\61\74\6f\6d\69\63\5f\78\63\68\67\5f\38"
  "\00\02\17\74\65\73\74\5f\69\36\34\5f\61\74\6f\6d"
  "\69\63\5f\78\63\68\67\5f\31\36\00\03\17\74\65\73"
  "\74\5f\69\36\34\5f\61\74\6f\6d\69\63\5f\78\63\68"
  "\67\5f\33\32\00\04\0a\f0\80\80\80\00\05\92\80\80"
  "\80\00\00\41\00\42\05\37\03\00\41\00\42\03\fe\42"
  "\03\00\1a\0b\91\80\80\80\00\00\41\00\42\05\37\03"
  "\00\41\00\42\03\fe\42\03\00\0b\91\80\80\80\00\00"
  "\41\00\42\05\37\03\00\41\00\42\03\fe\45\00\00\0b"
  "\91\80\80\80\00\00\41\00\42\05\37\03\00\41\00\42"
  "\03\fe\46\01\00\0b\91\80\80\80\00\00\41\00\42\05"
  "\37\03\00\41\00\42\03\fe\47\02\00\0b"
)
(assert_return (invoke "test_i64_atomic_xchg") (i64.const 0x5))
(assert_return (invoke "test_i64_atomic_xchg_8") (i64.const 0x5))
(assert_return (invoke "test_i64_atomic_xchg_16") (i64.const 0x5))
(assert_return (invoke "test_i64_atomic_xchg_32") (i64.const 0x5))
(assert_return (invoke "main"))
