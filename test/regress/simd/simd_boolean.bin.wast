(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\8c\80\80\80\00\0b\00\00\00\00\00"
  "\00\00\00\00\00\00\07\b8\81\80\80\00\0b\0e\69\38"
  "\78\31\36\2e\61\6e\79\5f\74\72\75\65\00\00\0e\69"
  "\38\78\31\36\2e\61\6c\6c\5f\74\72\75\65\00\01\0d"
  "\69\38\78\31\36\2e\62\69\74\6d\61\73\6b\00\02\0e"
  "\69\31\36\78\38\2e\61\6e\79\5f\74\72\75\65\00\03"
  "\0e\69\31\36\78\38\2e\61\6c\6c\5f\74\72\75\65\00"
  "\04\0d\69\31\36\78\38\2e\62\69\74\6d\61\73\6b\00"
  "\05\0e\69\33\32\78\34\2e\61\6e\79\5f\74\72\75\65"
  "\00\06\0e\69\33\32\78\34\2e\61\6c\6c\5f\74\72\75"
  "\65\00\07\0d\69\33\32\78\34\2e\62\69\74\6d\61\73"
  "\6b\00\08\0e\69\36\34\78\32\2e\61\6c\6c\5f\74\72"
  "\75\65\00\09\0d\69\36\34\78\32\2e\62\69\74\6d\61"
  "\73\6b\00\0a\0a\80\81\80\80\00\0b\86\80\80\80\00"
  "\00\20\00\fd\53\0b\86\80\80\80\00\00\20\00\fd\63"
  "\0b\86\80\80\80\00\00\20\00\fd\64\0b\86\80\80\80"
  "\00\00\20\00\fd\53\0b\87\80\80\80\00\00\20\00\fd"
  "\83\01\0b\87\80\80\80\00\00\20\00\fd\84\01\0b\86"
  "\80\80\80\00\00\20\00\fd\53\0b\87\80\80\80\00\00"
  "\20\00\fd\a3\01\0b\87\80\80\80\00\00\20\00\fd\a4"
  "\01\0b\87\80\80\80\00\00\20\00\fd\c3\01\0b\87\80"
  "\80\80\00\00\20\00\fd\c4\01\0b"
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x1_0000))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x201_00ff 0x605_0403 0xa09_0807 0xf0d_0c0b)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0xabab_abab 0xabab_abab 0xabab_abab 0xabab_abab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.all_true" (v128.const i32x4 0x0 0x0 0x0 0x1_0000))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0x201_00ff 0x605_0403 0xa09_0807 0xf0d_0c0b)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0xabab_abab 0xabab_abab 0xabab_abab 0xabab_abab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.all_true"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.bitmask"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "i8x16.bitmask"
    (v128.const i32x4 0x201_00ff 0x605_0403 0xa09_0807 0xf0d_0c0b)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0xffff 0x2_0001 0xc_000b 0xf_000d))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0xab_00ab 0xab_00ab 0xab_00ab 0xab_00ab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.all_true" (v128.const i32x4 0x0 0x0 0x0 0x1))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true" (v128.const i32x4 0xffff 0x2_0001 0xc_000b 0xf_000d))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0xab_00ab 0xab_00ab 0xab_00ab 0xab_00ab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.all_true"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.bitmask"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "i16x8.bitmask" (v128.const i32x4 0xffff 0x2_0001 0xc_000b 0xf_000d))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x1 0x1 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xffff_ffff 0x0 0x1 0xf))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xff 0xff 0xff 0xff))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xab 0xab 0xab 0xab))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x55 0x55 0x55 0x55))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x1 0x1 0x0 0x1))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0xffff_ffff 0x0 0x1 0xf))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0xff 0xff 0xff 0xff))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0xab 0xab 0xab 0xab))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true" (v128.const i32x4 0x55 0x55 0x55 0x55))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.all_true"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.bitmask"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xf)
)
(assert_return
  (invoke "i32x4.bitmask" (v128.const i32x4 0xffff_ffff 0x0 0x1 0xf))
  (i32.const 0x1)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x1 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0xff 0x0 0xff 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0xab 0x0 0xab 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i64x2.all_true" (v128.const i32x4 0x55 0x0 0x55 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i64x2.bitmask"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x3)
)
(assert_return
  (invoke "i64x2.bitmask" (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xf 0x0))
  (i32.const 0x1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\93\80\80\80\00\03\60"
  "\01\7b\01\7f\60\02\7b\7b\01\7f\60\03\7b\7b\7b\01"
  "\7f\03\c3\80\80\80\00\42\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01"
  "\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01"
  "\01\01\01\01\01\01\01\01\02\02\02\00\00\00\01\01"
  "\01\01\01\01\01\01\01\02\02\02\05\83\80\80\80\00"
  "\01\00\01\07\e5\90\80\80\00\42\19\69\38\78\31\36"
  "\5f\61\6e\79\5f\74\72\75\65\5f\61\73\5f\69\66\5f"
  "\63\6f\6e\64\00\00\19\69\31\36\78\38\5f\61\6e\79"
  "\5f\74\72\75\65\5f\61\73\5f\69\66\5f\63\6f\6e\64"
  "\00\01\19\69\33\32\78\34\5f\61\6e\79\5f\74\72\75"
  "\65\5f\61\73\5f\69\66\5f\63\6f\6e\64\00\02\19\69"
  "\38\78\31\36\5f\61\6c\6c\5f\74\72\75\65\5f\61\73"
  "\5f\69\66\5f\63\6f\6e\64\00\03\19\69\31\36\78\38"
  "\5f\61\6c\6c\5f\74\72\75\65\5f\61\73\5f\69\66\5f"
  "\63\6f\6e\64\00\04\19\69\33\32\78\34\5f\61\6c\6c"
  "\5f\74\72\75\65\5f\61\73\5f\69\66\5f\63\6f\6e\64"
  "\00\05\1d\69\38\78\31\36\5f\61\6e\79\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\06\1d\69\31\36\78\38\5f\61\6e\79\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\07\1d\69\33\32\78\34\5f\61\6e\79\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\08\1d\69\38\78\31\36\5f\61\6c\6c\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\09\1d\69\31\36\78\38\5f\61\6c\6c\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\0a\1d\69\33\32\78\34\5f\61\6c\6c\5f\74\72\75"
  "\65\5f\61\73\5f\73\65\6c\65\63\74\5f\63\6f\6e\64"
  "\00\0b\1c\69\38\78\31\36\5f\61\6e\79\5f\74\72\75"
  "\65\5f\61\73\5f\62\72\5f\69\66\5f\63\6f\6e\64\00"
  "\0c\1c\69\31\36\78\38\5f\61\6e\79\5f\74\72\75\65"
  "\5f\61\73\5f\62\72\5f\69\66\5f\63\6f\6e\64\00\0d"
  "\1c\69\33\32\78\34\5f\61\6e\79\5f\74\72\75\65\5f"
  "\61\73\5f\62\72\5f\69\66\5f\63\6f\6e\64\00\0e\1c"
  "\69\38\78\31\36\5f\61\6c\6c\5f\74\72\75\65\5f\61"
  "\73\5f\62\72\5f\69\66\5f\63\6f\6e\64\00\0f\1c\69"
  "\31\36\78\38\5f\61\6c\6c\5f\74\72\75\65\5f\61\73"
  "\5f\62\72\5f\69\66\5f\63\6f\6e\64\00\10\1c\69\33"
  "\32\78\34\5f\61\6c\6c\5f\74\72\75\65\5f\61\73\5f"
  "\62\72\5f\69\66\5f\63\6f\6e\64\00\11\21\69\38\78"
  "\31\36\5f\61\6e\79\5f\74\72\75\65\5f\61\73\5f\69"
  "\33\32\2e\61\6e\64\5f\6f\70\65\72\61\6e\64\00\12"
  "\21\69\31\36\78\38\5f\61\6e\79\5f\74\72\75\65\5f"
  "\61\73\5f\69\33\32\2e\61\6e\64\5f\6f\70\65\72\61"
  "\6e\64\00\13\21\69\33\32\78\34\5f\61\6e\79\5f\74"
  "\72\75\65\5f\61\73\5f\69\33\32\2e\61\6e\64\5f\6f"
  "\70\65\72\61\6e\64\00\14\20\69\38\78\31\36\5f\61"
  "\6e\79\5f\74\72\75\65\5f\61\73\5f\69\33\32\2e\6f"
  "\72\5f\6f\70\65\72\61\6e\64\00\15\20\69\31\36\78"
  "\38\5f\61\6e\79\5f\74\72\75\65\5f\61\73\5f\69\33"
  "\32\2e\6f\72\5f\6f\70\65\72\61\6e\64\00\16\20\69"
  "\33\32\78\34\5f\61\6e\79\5f\74\72\75\65\5f\61\73"
  "\5f\69\33\32\2e\6f\72\5f\6f\70\65\72\61\6e\64\00"
  "\17\21\69\38\78\31\36\5f\61\6e\79\5f\74\72\75\65"
  "\5f\61\73\5f\69\33\32\2e\78\6f\72\5f\6f\70\65\72"
  "\61\6e\64\00\18\21\69\31\36\78\38\5f\61\6e\79\5f"
  "\74\72\75\65\5f\61\73\5f\69\33\32\2e\78\6f\72\5f"
  "\6f\70\65\72\61\6e\64\00\19\21\69\33\32\78\34\5f"
  "\61\6e\79\5f\74\72\75\65\5f\61\73\5f\69\33\32\2e"
  "\78\6f\72\5f\6f\70\65\72\61\6e\64\00\1a\21\69\38"
  "\78\31\36\5f\61\6c\6c\5f\74\72\75\65\5f\61\73\5f"
  "\69\33\32\2e\61\6e\64\5f\6f\70\65\72\61\6e\64\00"
  "\1b\21\69\31\36\78\38\5f\61\6c\6c\5f\74\72\75\65"
  "\5f\61\73\5f\69\33\32\2e\61\6e\64\5f\6f\70\65\72"
  "\61\6e\64\00\1c\21\69\33\32\78\34\5f\61\6c\6c\5f"
  "\74\72\75\65\5f\61\73\5f\69\33\32\2e\61\6e\64\5f"
  "\6f\70\65\72\61\6e\64\00\1d\20\69\38\78\31\36\5f"
  "\61\6c\6c\5f\74\72\75\65\5f\61\73\5f\69\33\32\2e"
  "\6f\72\5f\6f\70\65\72\61\6e\64\00\1e\20\69\31\36"
  "\78\38\5f\61\6c\6c\5f\74\72\75\65\5f\61\73\5f\69"
  "\33\32\2e\6f\72\5f\6f\70\65\72\61\6e\64\00\1f\20"
  "\69\33\32\78\34\5f\61\6c\6c\5f\74\72\75\65\5f\61"
  "\73\5f\69\33\32\2e\6f\72\5f\6f\70\65\72\61\6e\64"
  "\00\20\21\69\38\78\31\36\5f\61\6c\6c\5f\74\72\75"
  "\65\5f\61\73\5f\69\33\32\2e\78\6f\72\5f\6f\70\65"
  "\72\61\6e\64\00\21\21\69\31\36\78\38\5f\61\6c\6c"
  "\5f\74\72\75\65\5f\61\73\5f\69\33\32\2e\78\6f\72"
  "\5f\6f\70\65\72\61\6e\64\00\22\21\69\33\32\78\34"
  "\5f\61\6c\6c\5f\74\72\75\65\5f\61\73\5f\69\33\32"
  "\2e\78\6f\72\5f\6f\70\65\72\61\6e\64\00\23\1c\69"
  "\38\78\31\36\5f\61\6e\79\5f\74\72\75\65\5f\77\69"
  "\74\68\5f\76\31\32\38\2e\6e\6f\74\00\24\1c\69\31"
  "\36\78\38\5f\61\6e\79\5f\74\72\75\65\5f\77\69\74"
  "\68\5f\76\31\32\38\2e\6e\6f\74\00\25\1c\69\33\32"
  "\78\34\5f\61\6e\79\5f\74\72\75\65\5f\77\69\74\68"
  "\5f\76\31\32\38\2e\6e\6f\74\00\26\1c\69\38\78\31"
  "\36\5f\61\6e\79\5f\74\72\75\65\5f\77\69\74\68\5f"
  "\76\31\32\38\2e\61\6e\64\00\27\1c\69\31\36\78\38"
  "\5f\61\6e\79\5f\74\72\75\65\5f\77\69\74\68\5f\76"
  "\31\32\38\2e\61\6e\64\00\28\1c\69\33\32\78\34\5f"
  "\61\6e\79\5f\74\72\75\65\5f\77\69\74\68\5f\76\31"
  "\32\38\2e\61\6e\64\00\29\1b\69\38\78\31\36\5f\61"
  "\6e\79\5f\74\72\75\65\5f\77\69\74\68\5f\76\31\32"
  "\38\2e\6f\72\00\2a\1b\69\31\36\78\38\5f\61\6e\79"
  "\5f\74\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e"
  "\6f\72\00\2b\1b\69\33\32\78\34\5f\61\6e\79\5f\74"
  "\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e\6f\72"
  "\00\2c\1c\69\38\78\31\36\5f\61\6e\79\5f\74\72\75"
  "\65\5f\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00"
  "\2d\1c\69\31\36\78\38\5f\61\6e\79\5f\74\72\75\65"
  "\5f\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00\2e"
  "\1c\69\33\32\78\34\5f\61\6e\79\5f\74\72\75\65\5f"
  "\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00\2f\22"
  "\69\38\78\31\36\5f\61\6e\79\5f\74\72\75\65\5f\77"
  "\69\74\68\5f\76\31\32\38\2e\62\69\74\73\65\6c\65"
  "\63\74\00\30\22\69\31\36\78\38\5f\61\6e\79\5f\74"
  "\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e\62\69"
  "\74\73\65\6c\65\63\74\00\31\22\69\33\32\78\34\5f"
  "\61\6e\79\5f\74\72\75\65\5f\77\69\74\68\5f\76\31"
  "\32\38\2e\62\69\74\73\65\6c\65\63\74\00\32\1c\69"
  "\38\78\31\36\5f\61\6c\6c\5f\74\72\75\65\5f\77\69"
  "\74\68\5f\76\31\32\38\2e\6e\6f\74\00\33\1c\69\31"
  "\36\78\38\5f\61\6c\6c\5f\74\72\75\65\5f\77\69\74"
  "\68\5f\76\31\32\38\2e\6e\6f\74\00\34\1c\69\33\32"
  "\78\34\5f\61\6c\6c\5f\74\72\75\65\5f\77\69\74\68"
  "\5f\76\31\32\38\2e\6e\6f\74\00\35\1c\69\38\78\31"
  "\36\5f\61\6c\6c\5f\74\72\75\65\5f\77\69\74\68\5f"
  "\76\31\32\38\2e\61\6e\64\00\36\1c\69\31\36\78\38"
  "\5f\61\6c\6c\5f\74\72\75\65\5f\77\69\74\68\5f\76"
  "\31\32\38\2e\61\6e\64\00\37\1c\69\33\32\78\34\5f"
  "\61\6c\6c\5f\74\72\75\65\5f\77\69\74\68\5f\76\31"
  "\32\38\2e\61\6e\64\00\38\1b\69\38\78\31\36\5f\61"
  "\6c\6c\5f\74\72\75\65\5f\77\69\74\68\5f\76\31\32"
  "\38\2e\6f\72\00\39\1b\69\31\36\78\38\5f\61\6c\6c"
  "\5f\74\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e"
  "\6f\72\00\3a\1b\69\33\32\78\34\5f\61\6c\6c\5f\74"
  "\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e\6f\72"
  "\00\3b\1c\69\38\78\31\36\5f\61\6c\6c\5f\74\72\75"
  "\65\5f\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00"
  "\3c\1c\69\31\36\78\38\5f\61\6c\6c\5f\74\72\75\65"
  "\5f\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00\3d"
  "\1c\69\33\32\78\34\5f\61\6c\6c\5f\74\72\75\65\5f"
  "\77\69\74\68\5f\76\31\32\38\2e\78\6f\72\00\3e\22"
  "\69\38\78\31\36\5f\61\6c\6c\5f\74\72\75\65\5f\77"
  "\69\74\68\5f\76\31\32\38\2e\62\69\74\73\65\6c\65"
  "\63\74\00\3f\22\69\31\36\78\38\5f\61\6c\6c\5f\74"
  "\72\75\65\5f\77\69\74\68\5f\76\31\32\38\2e\62\69"
  "\74\73\65\6c\65\63\74\00\40\22\69\33\32\78\34\5f"
  "\61\6c\6c\5f\74\72\75\65\5f\77\69\74\68\5f\76\31"
  "\32\38\2e\62\69\74\73\65\6c\65\63\74\00\41\0a\91"
  "\89\80\80\00\42\8e\80\80\80\00\00\20\00\fd\53\04"
  "\7f\41\01\05\41\00\0b\0b\8e\80\80\80\00\00\20\00"
  "\fd\53\04\7f\41\01\05\41\00\0b\0b\8e\80\80\80\00"
  "\00\20\00\fd\53\04\7f\41\01\05\41\00\0b\0b\8e\80"
  "\80\80\00\00\20\00\fd\63\04\7f\41\01\05\41\00\0b"
  "\0b\8f\80\80\80\00\00\20\00\fd\83\01\04\7f\41\01"
  "\05\41\00\0b\0b\8f\80\80\80\00\00\20\00\fd\a3\01"
  "\04\7f\41\01\05\41\00\0b\0b\8b\80\80\80\00\00\41"
  "\01\41\00\20\00\fd\53\1b\0b\8b\80\80\80\00\00\41"
  "\01\41\00\20\00\fd\53\1b\0b\8b\80\80\80\00\00\41"
  "\01\41\00\20\00\fd\53\1b\0b\8b\80\80\80\00\00\41"
  "\01\41\00\20\00\fd\63\1b\0b\8c\80\80\80\00\00\41"
  "\01\41\00\20\00\fd\83\01\1b\0b\8c\80\80\80\00\00"
  "\41\01\41\00\20\00\fd\a3\01\1b\0b\9b\80\80\80\00"
  "\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00\fd"
  "\53\0d\00\41\00\21\01\0b\20\01\0b\9b\80\80\80\00"
  "\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00\fd"
  "\53\0d\00\41\00\21\01\0b\20\01\0b\9b\80\80\80\00"
  "\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00\fd"
  "\53\0d\00\41\00\21\01\0b\20\01\0b\9b\80\80\80\00"
  "\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00\fd"
  "\63\0d\00\41\00\21\01\0b\20\01\0b\9c\80\80\80\00"
  "\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00\fd"
  "\83\01\0d\00\41\00\21\01\0b\20\01\0b\9c\80\80\80"
  "\00\01\01\7f\41\02\21\01\02\40\41\01\21\01\20\00"
  "\fd\a3\01\0d\00\41\00\21\01\0b\20\01\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\71\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\71\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\71\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\72\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\72\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\72\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\73\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\73\0b\8b\80\80"
  "\80\00\00\20\00\fd\53\20\01\fd\53\73\0b\8b\80\80"
  "\80\00\00\20\00\fd\63\20\01\fd\63\71\0b\8d\80\80"
  "\80\00\00\20\00\fd\83\01\20\01\fd\83\01\71\0b\8d"
  "\80\80\80\00\00\20\00\fd\a3\01\20\01\fd\a3\01\71"
  "\0b\8b\80\80\80\00\00\20\00\fd\63\20\01\fd\63\72"
  "\0b\8d\80\80\80\00\00\20\00\fd\83\01\20\01\fd\83"
  "\01\72\0b\8d\80\80\80\00\00\20\00\fd\a3\01\20\01"
  "\fd\a3\01\72\0b\8b\80\80\80\00\00\20\00\fd\63\20"
  "\01\fd\63\73\0b\8d\80\80\80\00\00\20\00\fd\83\01"
  "\20\01\fd\83\01\73\0b\8d\80\80\80\00\00\20\00\fd"
  "\a3\01\20\01\fd\a3\01\73\0b\88\80\80\80\00\00\20"
  "\00\fd\4d\fd\53\0b\88\80\80\80\00\00\20\00\fd\4d"
  "\fd\53\0b\88\80\80\80\00\00\20\00\fd\4d\fd\53\0b"
  "\8a\80\80\80\00\00\20\00\20\01\fd\4e\fd\53\0b\8a"
  "\80\80\80\00\00\20\00\20\01\fd\4e\fd\53\0b\8a\80"
  "\80\80\00\00\20\00\20\01\fd\4e\fd\53\0b\8a\80\80"
  "\80\00\00\20\00\20\01\fd\50\fd\53\0b\8a\80\80\80"
  "\00\00\20\00\20\01\fd\50\fd\53\0b\8a\80\80\80\00"
  "\00\20\00\20\01\fd\50\fd\53\0b\8a\80\80\80\00\00"
  "\20\00\20\01\fd\51\fd\53\0b\8a\80\80\80\00\00\20"
  "\00\20\01\fd\51\fd\53\0b\8a\80\80\80\00\00\20\00"
  "\20\01\fd\51\fd\53\0b\8c\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\52\fd\53\0b\8c\80\80\80\00\00\20\00"
  "\20\01\20\02\fd\52\fd\53\0b\8c\80\80\80\00\00\20"
  "\00\20\01\20\02\fd\52\fd\53\0b\88\80\80\80\00\00"
  "\20\00\fd\4d\fd\63\0b\89\80\80\80\00\00\20\00\fd"
  "\4d\fd\83\01\0b\89\80\80\80\00\00\20\00\fd\4d\fd"
  "\a3\01\0b\8a\80\80\80\00\00\20\00\20\01\fd\4e\fd"
  "\63\0b\8b\80\80\80\00\00\20\00\20\01\fd\4e\fd\83"
  "\01\0b\8b\80\80\80\00\00\20\00\20\01\fd\4e\fd\a3"
  "\01\0b\8a\80\80\80\00\00\20\00\20\01\fd\50\fd\63"
  "\0b\8b\80\80\80\00\00\20\00\20\01\fd\50\fd\83\01"
  "\0b\8b\80\80\80\00\00\20\00\20\01\fd\50\fd\a3\01"
  "\0b\8a\80\80\80\00\00\20\00\20\01\fd\51\fd\63\0b"
  "\8b\80\80\80\00\00\20\00\20\01\fd\51\fd\83\01\0b"
  "\8b\80\80\80\00\00\20\00\20\01\fd\51\fd\a3\01\0b"
  "\8c\80\80\80\00\00\20\00\20\01\20\02\fd\52\fd\63"
  "\0b\8d\80\80\80\00\00\20\00\20\01\20\02\fd\52\fd"
  "\83\01\0b\8d\80\80\80\00\00\20\00\20\01\20\02\fd"
  "\52\fd\a3\01\0b"
)
(assert_return
  (invoke "i8x16_any_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_if_cond"
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_if_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_if_cond" (v128.const i32x4 0x0 0x1 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_if_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_if_cond" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_if_cond"
    (v128.const i32x4 0x1_0101 0x1_0101 0x1_0101 0x1_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_if_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_if_cond"
    (v128.const i32x4 0x1_0001 0x1 0x1_0001 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_if_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_if_cond" (v128.const i32x4 0x1 0x1 0x1 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_if_cond" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_select_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_select_cond"
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_select_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_select_cond" (v128.const i32x4 0x0 0x0 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_select_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_select_cond" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_select_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_select_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_select_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_select_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_select_cond" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_select_cond" (v128.const i32x4 0x1 0x1 0x0 0x1))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_br_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_br_if_cond"
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_br_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_br_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_br_if_cond" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_br_if_cond" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_br_if_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_br_if_cond"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_br_if_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_br_if_cond"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_br_if_cond" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_br_if_cond" (v128.const i32x4 0x1 0x1 0x0 0x1))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.and_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.and_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.and_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.and_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.and_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.and_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x0 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.and_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.or_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.or_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.or_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.or_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.or_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.or_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.or_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x0 0x1)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_as_i32.xor_operand"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.not"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0xffff))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.not"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x55ff_5555)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaa_00aa 0xaa_00aa 0xaa_00aa 0xaa_00aa)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaa_00aa 0xaa_00aa 0xaa_00aa 0xaa_00aa)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_00ff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_any_true_with_v128.bitselect"
    (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
    (v128.const i32x4 0x55 0x55 0xff 0x55)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.not"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0xffff))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.not"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.and"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.and"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
    (v128.const i32x4 0x0 0x0 0x0 0xff_0000)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
    (v128.const i32x4 0x0 0x0 0x0 0xffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.or"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.or"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.xor"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.xor"
    (v128.const i32x4 0xffff_0000 0xffff_0000 0xffff_0000 0xffff_0000)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.xor"
    (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0x0 0xffff_ffff 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaa_00aa 0xaa_00aa 0xaa_00aa 0xaa_00aa)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaa_00aa 0xaa_00aa 0xaa_00aa 0xaa_00aa)
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
    (v128.const i32x4 0xaa_00aa 0xaa_00aa 0xaa_00aa 0xaa_00aa)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4_all_true_with_v128.bitselect"
    (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
    (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
  )
  (i32.const 0x1)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\63\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\83\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\a3\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\63\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\83\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\53\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\a3\01\0b"
  )
  "type mismatch"
)
