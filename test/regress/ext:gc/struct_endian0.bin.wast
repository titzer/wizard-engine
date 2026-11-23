(module definition binary
  "\00\61\73\6d\01\00\00\00\01\c3\80\80\80\00\0a\5f"
  "\07\78\01\77\01\7f\01\7e\01\7d\01\7c\01\7b\01\60"
  "\00\01\7f\60\00\01\7e\60\00\01\7b\60\00\02\7e\7e"
  "\60\01\7f\01\7f\60\01\7f\00\60\01\7e\00\60\01\7b"
  "\00\60\03\7f\7e\7b\0a\7f\7f\7f\7f\7f\7e\7f\7e\7e"
  "\7e\03\94\80\80\80\00\13\01\01\01\01\01\02\01\02"
  "\03\04\05\06\06\06\07\06\07\08\09\06\c0\80\80\80"
  "\00\01\64\00\00\41\81\01\41\81\85\02\41\81\85\8e"
  "\a4\78\42\db\b1\e7\f6\9d\d0\e0\c1\84\7f\43\81\82"
  "\83\84\44\db\d8\d9\de\81\82\83\84\fd\0c\01\02\03"
  "\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\fb\00\00"
  "\0b\07\e5\81\80\80\00\13\08\67\65\74\5f\69\38\5f"
  "\75\00\00\08\67\65\74\5f\69\38\5f\73\00\01\09\67"
  "\65\74\5f\69\31\36\5f\75\00\02\09\67\65\74\5f\69"
  "\31\36\5f\73\00\03\07\67\65\74\5f\69\33\32\00\04"
  "\07\67\65\74\5f\69\36\34\00\05\0c\67\65\74\5f\66"
  "\33\32\5f\62\69\74\73\00\06\0c\67\65\74\5f\66\36"
  "\34\5f\62\69\74\73\00\07\08\67\65\74\5f\76\31\32"
  "\38\00\08\0e\67\65\74\5f\76\31\32\38\5f\6c\61\6e"
  "\65\73\00\09\0d\67\65\74\5f\76\31\32\38\5f\62\79"
  "\74\65\00\0a\06\73\65\74\5f\69\38\00\0b\07\73\65"
  "\74\5f\69\31\36\00\0c\07\73\65\74\5f\69\33\32\00"
  "\0d\07\73\65\74\5f\69\36\34\00\0e\0c\73\65\74\5f"
  "\66\33\32\5f\62\69\74\73\00\0f\0c\73\65\74\5f\66"
  "\36\34\5f\62\69\74\73\00\10\08\73\65\74\5f\76\31"
  "\32\38\00\11\05\66\72\65\73\68\00\12\0a\f5\82\80"
  "\80\00\13\88\80\80\80\00\00\23\00\fb\04\00\00\0b"
  "\88\80\80\80\00\00\23\00\fb\03\00\00\0b\88\80\80"
  "\80\00\00\23\00\fb\04\00\01\0b\88\80\80\80\00\00"
  "\23\00\fb\03\00\01\0b\88\80\80\80\00\00\23\00\fb"
  "\02\00\02\0b\88\80\80\80\00\00\23\00\fb\02\00\03"
  "\0b\89\80\80\80\00\00\23\00\fb\02\00\04\bc\0b\89"
  "\80\80\80\00\00\23\00\fb\02\00\05\bd\0b\88\80\80"
  "\80\00\00\23\00\fb\02\00\06\0b\94\80\80\80\00\00"
  "\23\00\fb\02\00\06\fd\1d\00\23\00\fb\02\00\06\fd"
  "\1d\01\0b\91\80\80\80\00\00\23\00\fb\02\00\06\20"
  "\00\fd\0f\fd\0e\fd\16\00\0b\8a\80\80\80\00\00\23"
  "\00\20\00\fb\05\00\00\0b\8a\80\80\80\00\00\23\00"
  "\20\00\fb\05\00\01\0b\8a\80\80\80\00\00\23\00\20"
  "\00\fb\05\00\02\0b\8a\80\80\80\00\00\23\00\20\00"
  "\fb\05\00\03\0b\8b\80\80\80\00\00\23\00\20\00\be"
  "\fb\05\00\04\0b\8b\80\80\80\00\00\23\00\20\00\bf"
  "\fb\05\00\05\0b\8a\80\80\80\00\00\23\00\20\00\fb"
  "\05\00\06\0b\de\80\80\80\00\01\01\64\00\20\00\20"
  "\00\20\00\20\01\20\00\be\20\01\bf\20\02\fb\00\00"
  "\21\03\20\03\fb\04\00\00\20\03\fb\03\00\00\20\03"
  "\fb\04\00\01\20\03\fb\03\00\01\20\03\fb\02\00\02"
  "\20\03\fb\02\00\03\20\03\fb\02\00\04\bc\20\03\fb"
  "\02\00\05\bd\20\03\fb\02\00\06\fd\1d\00\20\03\fb"
  "\02\00\06\fd\1d\01\0b"
)
(module instance)
(assert_return (invoke "get_i8_u") (i32.const 0x81))
(assert_return (invoke "get_i8_s") (i32.const 0xffff_ff81))
(assert_return (invoke "get_i16_u") (i32.const 0x8281))
(assert_return (invoke "get_i16_s") (i32.const 0xffff_8281))
(assert_return (invoke "get_i32") (i32.const 0x8483_8281))
(assert_return (invoke "get_i64") (i64.const 0x8483_8281_ded9_d8db))
(assert_return (invoke "get_f32_bits") (i32.const 0x8483_8281))
(assert_return (invoke "get_f64_bits") (i64.const 0x8483_8281_ded9_d8db))
(assert_return
  (invoke "get_v128")
  (v128.const i8x16
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
    0x10
  )
)
(assert_return
  (invoke "get_v128_lanes")
  (i64.const 0x807_0605_0403_0201)
  (i64.const 0x100f_0e0d_0c0b_0a09)
)
(assert_return (invoke "get_v128_byte" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "get_v128_byte" (i32.const 0x7)) (i32.const 0x8))
(assert_return (invoke "get_v128_byte" (i32.const 0x8)) (i32.const 0x9))
(assert_return (invoke "get_v128_byte" (i32.const 0xf)) (i32.const 0x10))
(invoke "set_i8" (i32.const 0xfedc_ba7f))
(invoke "set_i16" (i32.const 0xfedc_7f01))
(invoke "set_i32" (i32.const 0x102_0304))
(invoke "set_i64" (i64.const 0x102_0304_0506_0708))
(invoke "set_f32_bits" (i32.const 0x3f01_0203))
(invoke "set_f64_bits" (i64.const 0x3ff1_0203_0405_0607))
(invoke "set_v128"
  (v128.const i32x4 0xc3d2_e1f0 0x8796_a5b4 0x4b5a_6978 0xf1e_2d3c)
)
(assert_return (invoke "get_i8_u") (i32.const 0x7f))
(assert_return (invoke "get_i8_s") (i32.const 0x7f))
(assert_return (invoke "get_i16_u") (i32.const 0x7f01))
(assert_return (invoke "get_i16_s") (i32.const 0x7f01))
(assert_return (invoke "get_i32") (i32.const 0x102_0304))
(assert_return (invoke "get_i64") (i64.const 0x102_0304_0506_0708))
(assert_return (invoke "get_f32_bits") (i32.const 0x3f01_0203))
(assert_return (invoke "get_f64_bits") (i64.const 0x3ff1_0203_0405_0607))
(assert_return
  (invoke "get_v128")
  (v128.const i8x16
    0xf0
    0xe1
    0xd2
    0xc3
    0xb4
    0xa5
    0x96
    0x87
    0x78
    0x69
    0x5a
    0x4b
    0x3c
    0x2d
    0x1e
    0xf
  )
)
(assert_return
  (invoke "get_v128_lanes")
  (i64.const 0x8796_a5b4_c3d2_e1f0)
  (i64.const 0xf1e_2d3c_4b5a_6978)
)
(assert_return (invoke "get_v128_byte" (i32.const 0x0)) (i32.const 0xf0))
(assert_return (invoke "get_v128_byte" (i32.const 0x9)) (i32.const 0x69))
(assert_return (invoke "get_v128_byte" (i32.const 0xf)) (i32.const 0xf))
(assert_return
  (invoke "fresh"
    (i32.const 0x8483_8281)
    (i64.const 0x102_0304_0506_0708)
    (v128.const i32x4 0x1516_1718 0x1112_1314 0x2526_2728 0x2122_2324)
  )
  (i32.const 0x81)
  (i32.const 0xffff_ff81)
  (i32.const 0x8281)
  (i32.const 0xffff_8281)
  (i32.const 0x8483_8281)
  (i64.const 0x102_0304_0506_0708)
  (i32.const 0x8483_8281)
  (i64.const 0x102_0304_0506_0708)
  (i64.const 0x1112_1314_1516_1718)
  (i64.const 0x2122_2324_2526_2728)
)
