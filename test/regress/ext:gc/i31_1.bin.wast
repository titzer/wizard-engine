(module $anyref_global_of_i31ref binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\02\7f\7f\60\01\7f\00\03\83\80\80\80\00\02\00"
  "\01\06\91\80\80\80\00\02\6e\00\41\d2\09\fb\1c\0b"
  "\6e\01\41\ae\2c\fb\1c\0b\07\9c\80\80\80\00\02\0b"
  "\67\65\74\5f\67\6c\6f\62\61\6c\73\00\00\0a\73\65"
  "\74\5f\67\6c\6f\62\61\6c\00\01\0a\a3\80\80\80\00"
  "\02\90\80\80\80\00\00\23\00\fb\17\6c\fb\1e\23\01"
  "\fb\17\6c\fb\1e\0b\88\80\80\80\00\00\20\00\fb\1c"
  "\24\01\0b"
)
(assert_return (invoke "get_globals") (i32.const 0x4d2) (i32.const 0x162e))
(invoke "set_global" (i32.const 0x0))
(assert_return (invoke "get_globals") (i32.const 0x4d2) (i32.const 0x0))
