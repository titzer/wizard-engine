(module definition binary
  "\00\61\73\6d\01\00\00\00\01\b3\80\80\80\00\09\5f"
  "\08\78\01\7e\01\77\01\7d\01\7f\01\7c\01\78\01\77"
  "\01\60\00\01\7f\60\00\01\7e\60\00\01\7d\60\00\01"
  "\7c\60\01\7f\00\60\01\7e\00\60\01\7d\00\60\01\7c"
  "\00\03\93\80\80\80\00\12\01\01\02\01\01\03\01\04"
  "\01\01\05\06\05\07\05\08\05\05\06\b4\80\80\80\00"
  "\01\64\00\00\41\81\01\42\88\ef\99\ab\c5\e8\8c\91"
  "\11\41\81\80\02\43\00\00\c0\3f\41\ef\fd\b6\f5\7d"
  "\44\00\00\00\00\00\00\02\40\41\ff\00\41\ff\ff\01"
  "\fb\00\00\0b\07\9d\81\80\80\00\12\07\67\65\74\5f"
  "\61\5f\73\00\00\07\67\65\74\5f\61\5f\75\00\01\05"
  "\67\65\74\5f\62\00\02\07\67\65\74\5f\63\5f\73\00"
  "\03\07\67\65\74\5f\63\5f\75\00\04\05\67\65\74\5f"
  "\64\00\05\05\67\65\74\5f\65\00\06\05\67\65\74\5f"
  "\66\00\07\07\67\65\74\5f\67\5f\73\00\08\07\67\65"
  "\74\5f\68\5f\75\00\09\05\73\65\74\5f\61\00\0a\05"
  "\73\65\74\5f\62\00\0b\05\73\65\74\5f\63\00\0c\05"
  "\73\65\74\5f\64\00\0d\05\73\65\74\5f\65\00\0e\05"
  "\73\65\74\5f\66\00\0f\05\73\65\74\5f\67\00\10\05"
  "\73\65\74\5f\68\00\11\0a\fb\81\80\80\00\12\88\80"
  "\80\80\00\00\23\00\fb\03\00\00\0b\88\80\80\80\00"
  "\00\23\00\fb\04\00\00\0b\88\80\80\80\00\00\23\00"
  "\fb\02\00\01\0b\88\80\80\80\00\00\23\00\fb\03\00"
  "\02\0b\88\80\80\80\00\00\23\00\fb\04\00\02\0b\88"
  "\80\80\80\00\00\23\00\fb\02\00\03\0b\88\80\80\80"
  "\00\00\23\00\fb\02\00\04\0b\88\80\80\80\00\00\23"
  "\00\fb\02\00\05\0b\88\80\80\80\00\00\23\00\fb\03"
  "\00\06\0b\88\80\80\80\00\00\23\00\fb\04\00\07\0b"
  "\8a\80\80\80\00\00\23\00\20\00\fb\05\00\00\0b\8a"
  "\80\80\80\00\00\23\00\20\00\fb\05\00\01\0b\8a\80"
  "\80\80\00\00\23\00\20\00\fb\05\00\02\0b\8a\80\80"
  "\80\00\00\23\00\20\00\fb\05\00\03\0b\8a\80\80\80"
  "\00\00\23\00\20\00\fb\05\00\04\0b\8a\80\80\80\00"
  "\00\23\00\20\00\fb\05\00\05\0b\8a\80\80\80\00\00"
  "\23\00\20\00\fb\05\00\06\0b\8a\80\80\80\00\00\23"
  "\00\20\00\fb\05\00\07\0b"
)
(module instance)
(assert_return (invoke "get_a_s") (i32.const 0xffff_ff81))
(assert_return (invoke "get_a_u") (i32.const 0x81))
(assert_return (invoke "get_b") (i64.const 0x1122_3344_5566_7788))
(assert_return (invoke "get_c_s") (i32.const 0xffff_8001))
(assert_return (invoke "get_c_u") (i32.const 0x8001))
(assert_return (invoke "get_d") (f32.const 0x1.8p+0))
(assert_return (invoke "get_e") (i32.const 0xdead_beef))
(assert_return (invoke "get_f") (f64.const 0x1.2p+1))
(assert_return (invoke "get_g_s") (i32.const 0x7f))
(assert_return (invoke "get_h_u") (i32.const 0x7fff))
(invoke "set_a" (i32.const 0xffff_ffff))
(assert_return (invoke "get_a_u") (i32.const 0xff))
(assert_return (invoke "get_c_u") (i32.const 0x8001))
(assert_return (invoke "get_g_s") (i32.const 0x7f))
(assert_return (invoke "get_h_u") (i32.const 0x7fff))
(assert_return (invoke "get_e") (i32.const 0xdead_beef))
(invoke "set_c" (i32.const 0xffff_ffff))
(assert_return (invoke "get_c_s") (i32.const 0xffff_ffff))
(assert_return (invoke "get_a_u") (i32.const 0xff))
(assert_return (invoke "get_h_u") (i32.const 0x7fff))
(assert_return (invoke "get_g_s") (i32.const 0x7f))
(invoke "set_g" (i32.const 0x80))
(assert_return (invoke "get_g_s") (i32.const 0xffff_ff80))
(assert_return (invoke "get_a_u") (i32.const 0xff))
(assert_return (invoke "get_c_u") (i32.const 0xffff))
(assert_return (invoke "get_h_u") (i32.const 0x7fff))
(invoke "set_h" (i32.const 0x1_2345))
(assert_return (invoke "get_h_u") (i32.const 0x2345))
(assert_return (invoke "get_c_u") (i32.const 0xffff))
(assert_return (invoke "get_g_s") (i32.const 0xffff_ff80))
(assert_return (invoke "get_a_u") (i32.const 0xff))
(invoke "set_e" (i32.const 0x0))
(assert_return (invoke "get_e") (i32.const 0x0))
(assert_return (invoke "get_d") (f32.const 0x1.8p+0))
(assert_return (invoke "get_b") (i64.const 0x1122_3344_5566_7788))
(assert_return (invoke "get_f") (f64.const 0x1.2p+1))
(invoke "set_d" (f32.const -0x1p-149))
(assert_return (invoke "get_d") (f32.const -0x1p-149))
(assert_return (invoke "get_e") (i32.const 0x0))
(invoke "set_b" (i64.const 0xffff_ffff_ffff_ffff))
(invoke "set_f" (f64.const -0x1.ffff_ffff_ffff_fp+1023))
(assert_return (invoke "get_b") (i64.const 0xffff_ffff_ffff_ffff))
(assert_return (invoke "get_f") (f64.const -0x1.ffff_ffff_ffff_fp+1023))
(assert_return (invoke "get_d") (f32.const -0x1p-149))
(assert_return (invoke "get_e") (i32.const 0x0))
(assert_return (invoke "get_a_u") (i32.const 0xff))
(assert_return (invoke "get_c_u") (i32.const 0xffff))
(assert_return (invoke "get_g_s") (i32.const 0xffff_ff80))
(assert_return (invoke "get_h_u") (i32.const 0x2345))
