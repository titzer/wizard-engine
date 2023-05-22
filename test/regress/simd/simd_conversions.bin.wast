(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7b\01\7b\60\02\7b\7b\01\7b\03\8b\80\80\80\00"
  "\0a\00\00\00\00\01\01\01\01\00\00\07\f9\81\80\80"
  "\00\0a\15\66\33\32\78\34\2e\63\6f\6e\76\65\72\74"
  "\5f\69\33\32\78\34\5f\73\00\00\15\66\33\32\78\34"
  "\2e\63\6f\6e\76\65\72\74\5f\69\33\32\78\34\5f\75"
  "\00\01\19\66\36\34\78\32\2e\63\6f\6e\76\65\72\74"
  "\5f\6c\6f\77\5f\69\33\32\78\34\5f\73\00\02\19\66"
  "\36\34\78\32\2e\63\6f\6e\76\65\72\74\5f\6c\6f\77"
  "\5f\69\33\32\78\34\5f\75\00\03\14\69\38\78\31\36"
  "\2e\6e\61\72\72\6f\77\5f\69\31\36\78\38\5f\73\00"
  "\04\14\69\38\78\31\36\2e\6e\61\72\72\6f\77\5f\69"
  "\31\36\78\38\5f\75\00\05\14\69\31\36\78\38\2e\6e"
  "\61\72\72\6f\77\5f\69\33\32\78\34\5f\73\00\06\14"
  "\69\31\36\78\38\2e\6e\61\72\72\6f\77\5f\69\33\32"
  "\78\34\5f\75\00\07\17\66\36\34\78\32\2e\70\72\6f"
  "\6d\6f\74\65\5f\6c\6f\77\5f\66\33\32\78\34\00\08"
  "\17\66\33\32\78\34\2e\64\65\6d\6f\74\65\5f\66\36"
  "\34\78\32\5f\7a\65\72\6f\00\09\0a\fd\80\80\80\00"
  "\0a\87\80\80\80\00\00\20\00\fd\fa\01\0b\87\80\80"
  "\80\00\00\20\00\fd\fb\01\0b\87\80\80\80\00\00\20"
  "\00\fd\fe\01\0b\87\80\80\80\00\00\20\00\fd\ff\01"
  "\0b\88\80\80\80\00\00\20\00\20\01\fd\65\0b\88\80"
  "\80\80\00\00\20\00\20\01\fd\66\0b\89\80\80\80\00"
  "\00\20\00\20\01\fd\85\01\0b\89\80\80\80\00\00\20"
  "\00\20\01\fd\86\01\0b\86\80\80\80\00\00\20\00\fd"
  "\5f\0b\86\80\80\80\00\00\20\00\fd\5e\0b"
)
(assert_return
  (invoke "f64x2.promote_low_f32x4" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f64x2 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f64x2 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f64x2 -0x1.ffff_fep+127 -0x1.ffff_fep+127)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f64x2 0x1.ffff_fep+127 0x1.ffff_fep+127)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x400_0000 0x400_0000 0x400_0000 0x400_0000)
  )
  (v128.const f64x2 0x1p-119 0x1p-119)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x7e47_c33f 0x7e47_c33f 0x7e47_c33f 0x7e47_c33f)
  )
  (v128.const f64x2 0x1.8f86_7ep+125 0x1.8f86_7ep+125)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.promote_low_f32x4"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xe000_0000 0x380f_ffff 0xe000_0000 0x380f_ffff)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xe000_0000 0xb80f_ffff 0xe000_0000 0xb80f_ffff)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xdfff_ffff 0x380f_ffff 0xdfff_ffff 0x380f_ffff)
  )
  (v128.const f32x4 0x1.ffff_fcp-127 0x1.ffff_fcp-127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xdfff_ffff 0xb80f_ffff 0xdfff_ffff 0xb80f_ffff)
  )
  (v128.const f32x4 -0x1.ffff_fcp-127 -0x1.ffff_fcp-127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x36a0_0000 0x0 0x36a0_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xb6a0_0000 0x0 0xb6a0_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xd000_0000 0x47ef_ffff 0xd000_0000 0x47ef_ffff)
  )
  (v128.const f32x4 0x1.ffff_fcp+127 0x1.ffff_fcp+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xd000_0000 0xc7ef_ffff 0xd000_0000 0xc7ef_ffff)
  )
  (v128.const f32x4 -0x1.ffff_fcp+127 -0x1.ffff_fcp+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xd000_0001 0x47ef_ffff 0xd000_0001 0x47ef_ffff)
  )
  (v128.const f32x4 0x1.ffff_fep+127 0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xd000_0001 0xc7ef_ffff 0xd000_0001 0xc7ef_ffff)
  )
  (v128.const f32x4 -0x1.ffff_fep+127 -0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xe000_0000 0x47ef_ffff 0xe000_0000 0x47ef_ffff)
  )
  (v128.const f32x4 0x1.ffff_fep+127 0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xe000_0000 0xc7ef_ffff 0xe000_0000 0xc7ef_ffff)
  )
  (v128.const f32x4 -0x1.ffff_fep+127 -0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xefff_ffff 0x47ef_ffff 0xefff_ffff 0x47ef_ffff)
  )
  (v128.const f32x4 0x1.ffff_fep+127 0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xefff_ffff 0xc7ef_ffff 0xefff_ffff 0xc7ef_ffff)
  )
  (v128.const f32x4 -0x1.ffff_fep+127 -0x1.ffff_fep+127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xf000_0000 0x47ef_ffff 0xf000_0000 0x47ef_ffff)
  )
  (v128.const f32x4 inf inf 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xf000_0000 0xc7ef_ffff 0xf000_0000 0xc7ef_ffff)
  )
  (v128.const f32x4 -inf -inf 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x3880_0000 0x0 0x3880_0000)
  )
  (v128.const f32x4 0x1p-119 0x1p-119 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xe000_0000 0x47c8_f867 0xe000_0000 0x47c8_f867)
  )
  (v128.const f32x4 0x1.8f86_7ep+125 0x1.8f86_7ep+125 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f32x4 inf inf 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f32x4 -inf -inf 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1 0x3ff0_0000 0x1 0x3ff0_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xffff_ffff 0x3fef_ffff 0xffff_ffff 0x3fef_ffff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1000_0000 0x3ff0_0000 0x1000_0000 0x3ff0_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1000_0001 0x3ff0_0000 0x1000_0001 0x3ff0_0000)
  )
  (v128.const f32x4 0x1.0000_02p+0 0x1.0000_02p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x2fff_ffff 0x3ff0_0000 0x2fff_ffff 0x3ff0_0000)
  )
  (v128.const f32x4 0x1.0000_02p+0 0x1.0000_02p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x3000_0000 0x3ff0_0000 0x3000_0000 0x3ff0_0000)
  )
  (v128.const f32x4 0x1.0000_04p+0 0x1.0000_04p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x5000_0000 0x3ff0_0000 0x5000_0000 0x3ff0_0000)
  )
  (v128.const f32x4 0x1.0000_04p+0 0x1.0000_04p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1000_0000 0x4170_0000 0x1000_0000 0x4170_0000)
  )
  (v128.const f32x4 0x1p+24 0x1p+24 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1000_0001 0x4170_0000 0x1000_0001 0x4170_0000)
  )
  (v128.const f32x4 0x1.0000_02p+24 0x1.0000_02p+24 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x2fff_ffff 0x4170_0000 0x2fff_ffff 0x4170_0000)
  )
  (v128.const f32x4 0x1.0000_02p+24 0x1.0000_02p+24 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x3000_0000 0x4170_0000 0x3000_0000 0x4170_0000)
  )
  (v128.const f32x4 0x1.0000_04p+24 0x1.0000_04p+24 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0xf702_4c70 0x46b4_eae4 0xf702_4c70 0x46b4_eae4)
  )
  (v128.const f32x4 0x1.4eae_5p+108 0x1.4eae_5p+108 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1e35_8685 0x38ea_12e7 0x1e35_8685 0x38ea_12e7)
  )
  (v128.const f32x4 0x1.a12e_72p-113 0x1.a12e_72p-113 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x54d5_21ff 0x380c_b983 0x54d5_21ff 0x380c_b983)
  )
  (v128.const f32x4 0x1.cb98_34p-127 0x1.cb98_34p-127 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x30cf_b562 0xc006_972b 0x30cf_b562 0xc006_972b)
  )
  (v128.const f32x4 -0x1.6972_b4p+1 -0x1.6972_b4p+1 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x4819_d4c4 0xc6fb_edbe 0x4819_d4c4 0xc6fb_edbe)
  )
  (v128.const f32x4 -0x1.bedb_e4p+112 -0x1.bedb_e4p+112 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0x3690_0000 0x0 0x3690_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x0 0xb690_0000 0x0 0xb690_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1 0x3690_0000 0x1 0x3690_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.demote_f64x2_zero"
    (v128.const i32x4 0x1 0xb690_0000 0x1 0xb690_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const f32x4 0x1p+31 0x1p+31 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p+31 -0x1p+31 -0x1p+31 -0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const f32x4
    0x1.2658_0cp+30
    0x1.2658_0cp+30
    0x1.2658_0cp+30
    0x1.2658_0cp+30
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x75b_cd18 0x75b_cd18)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x1234_5680 0x1234_5680 0x1234_5680 0x1234_5680)
  )
  (v128.const f32x4
    0x1.2345_68p+28
    0x1.2345_68p+28
    0x1.2345_68p+28
    0x1.2345_68p+28
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x100_0001 0x100_0001 0x100_0001 0x100_0001)
  )
  (v128.const f32x4 0x1p+24 0x1p+24 0x1p+24 0x1p+24)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0xfeff_ffff 0xfeff_ffff 0xfeff_ffff 0xfeff_ffff)
  )
  (v128.const f32x4 -0x1p+24 -0x1p+24 -0x1p+24 -0x1p+24)
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x100_0003 0x100_0003 0x100_0003 0x100_0003)
  )
  (v128.const f32x4
    0x1.0000_04p+24
    0x1.0000_04p+24
    0x1.0000_04p+24
    0x1.0000_04p+24
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0xfeff_fffd 0xfeff_fffd 0xfeff_fffd 0xfeff_fffd)
  )
  (v128.const f32x4
    -0x1.0000_04p+24
    -0x1.0000_04p+24
    -0x1.0000_04p+24
    -0x1.0000_04p+24
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_s"
    (v128.const i32x4 0x0 0xffff_ffff 0x7fff_ffff 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 -0x1p+0 0x1p+31 -0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const f32x4 0x1p+32 0x1p+32 0x1p+32 0x1p+32)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const f32x4 0x1p+31 0x1p+31 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p+31 0x1p+31 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const f32x4
    0x1.2345_68p+28
    0x1.2345_68p+28
    0x1.2345_68p+28
    0x1.2345_68p+28
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x8000_0080 0x8000_0080 0x8000_0080 0x8000_0080)
  )
  (v128.const f32x4 0x1p+31 0x1p+31 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x8000_0081 0x8000_0081 0x8000_0081 0x8000_0081)
  )
  (v128.const f32x4
    0x1.0000_02p+31
    0x1.0000_02p+31
    0x1.0000_02p+31
    0x1.0000_02p+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x8000_0082 0x8000_0082 0x8000_0082 0x8000_0082)
  )
  (v128.const f32x4
    0x1.0000_02p+31
    0x1.0000_02p+31
    0x1.0000_02p+31
    0x1.0000_02p+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0xffff_fe80 0xffff_fe80 0xffff_fe80 0xffff_fe80)
  )
  (v128.const f32x4
    0x1.ffff_fcp+31
    0x1.ffff_fcp+31
    0x1.ffff_fcp+31
    0x1.ffff_fcp+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0xffff_fe81 0xffff_fe81 0xffff_fe81 0xffff_fe81)
  )
  (v128.const f32x4
    0x1.ffff_fep+31
    0x1.ffff_fep+31
    0x1.ffff_fep+31
    0x1.ffff_fep+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0xffff_fe82 0xffff_fe82 0xffff_fe82 0xffff_fe82)
  )
  (v128.const f32x4
    0x1.ffff_fep+31
    0x1.ffff_fep+31
    0x1.ffff_fep+31
    0x1.ffff_fep+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x75b_cd18 0x75b_cd18)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const f32x4
    0x1.2157_9cp+31
    0x1.2157_9cp+31
    0x1.2157_9cp+31
    0x1.2157_9cp+31
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x100_0001 0x100_0001 0x100_0001 0x100_0001)
  )
  (v128.const f32x4 0x1p+24 0x1p+24 0x1p+24 0x1p+24)
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x100_0003 0x100_0003 0x100_0003 0x100_0003)
  )
  (v128.const f32x4
    0x1.0000_04p+24
    0x1.0000_04p+24
    0x1.0000_04p+24
    0x1.0000_04p+24
  )
)
(assert_return
  (invoke "f32x4.convert_i32x4_u"
    (v128.const i32x4 0x0 0xffff_ffff 0x7fff_ffff 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x1p+32 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_fffcp+30 0x1.ffff_fffcp+30)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
  )
  (v128.const f64x2 -0x1p+31 -0x1p+31)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_s"
    (v128.const i32x4 0x3ade_68b1 0x3ade_68b1 0x0 0x0)
  )
  (v128.const f64x2 0x1.d6f3_4588p+29 0x1.d6f3_4588p+29)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_u" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_fffcp+30 0x1.ffff_fffcp+30)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
  )
  (v128.const f64x2 0x1p+31 0x1p+31)
)
(assert_return
  (invoke "f64x2.convert_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_fffep+31 0x1.ffff_fffep+31)
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x7e_007e 0x7e_007e 0x7e_007e 0x7e_007e)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x7e_007e 0x7e_007e 0x7e_007e 0x7e_007e)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff81_ff81 0xff81_ff81 0xff81_ff81 0xff81_ff81)
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
  )
  (v128.const i8x16
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0xff81_ff81 0xff81_ff81 0xff81_ff81 0xff81_ff81)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
    0x81
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff80_ff80 0xff80_ff80 0xff80_ff80 0xff80_ff80)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f 0xff7f_ff7f)
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
    (v128.const i32x4 0xddd5_ddd5 0xddd5_ddd5 0xddd5_ddd5 0xddd5_ddd5)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_s"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x5678_5678 0x5678_5678 0x5678_5678 0x5678_5678)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x7e_007e 0x7e_007e 0x7e_007e 0x7e_007e)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x7e_007e 0x7e_007e 0x7e_007e 0x7e_007e)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
    0x7e
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
  )
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x80_0080 0x80_0080 0x80_0080 0x80_0080)
    (v128.const i32x4 0x7f_007f 0x7f_007f 0x7f_007f 0x7f_007f)
  )
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xfe_00fe 0xfe_00fe 0xfe_00fe 0xfe_00fe)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
    (v128.const i32x4 0xfe_00fe 0xfe_00fe 0xfe_00fe 0xfe_00fe)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x100_0100 0x100_0100 0x100_0100 0x100_0100)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0xddd5_ddd5 0xddd5_ddd5 0xddd5_ddd5 0xddd5_ddd5)
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.narrow_i16x8_u"
    (v128.const i32x4 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab)
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x7ffe 0x7ffe 0x7ffe 0x7ffe 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
    (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
  )
  (v128.const i16x8 0x8001 0x8001 0x8001 0x8001 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8001 0x8001 0x8001 0x8001)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
    (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xffff_7fff 0xffff_7fff 0xffff_7fff 0xffff_7fff)
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0xf800_0000 0xf800_0000 0xf800_0000 0xf800_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_s"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xfffe 0xfffe 0xfffe 0xfffe)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0xfffe 0xfffe 0xfffe 0xfffe 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
    (v128.const i32x4 0xfffe 0xfffe 0xfffe 0xfffe)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xfffe 0xfffe 0xfffe 0xfffe)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.narrow_i32x4_u"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0xffff 0xffff 0xffff 0xffff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\fa\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\fa\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\fb\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\fb\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\42\00\fd\65\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\42\00\fd\66\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\99\80\80\80"
    "\00\01\93\80\80\80\00\00\43\00\00\00\00\44\00\00"
    "\00\00\00\00\00\00\fd\85\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\99\80\80\80"
    "\00\01\93\80\80\80\00\00\43\00\00\00\00\44\00\00"
    "\00\00\00\00\00\00\fd\85\01\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\94\80\80\80\00\13\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07"
  "\ad\84\80\80\00\13\19\66\33\32\78\34\5f\63\6f\6e"
  "\76\65\72\74\5f\69\33\32\78\34\5f\73\5f\61\64\64"
  "\00\00\19\66\33\32\78\34\5f\63\6f\6e\76\65\72\74"
  "\5f\69\33\32\78\34\5f\73\5f\73\75\62\00\01\19\66"
  "\33\32\78\34\5f\63\6f\6e\76\65\72\74\5f\69\33\32"
  "\78\34\5f\75\5f\6d\75\6c\00\02\1a\69\31\36\78\38"
  "\5f\6c\6f\77\5f\65\78\74\65\6e\64\5f\6e\61\72\72"
  "\6f\77\5f\73\73\00\03\1a\69\31\36\78\38\5f\6c\6f"
  "\77\5f\65\78\74\65\6e\64\5f\6e\61\72\72\6f\77\5f"
  "\73\75\00\04\1b\69\31\36\78\38\5f\68\69\67\68\5f"
  "\65\78\74\65\6e\64\5f\6e\61\72\72\6f\77\5f\73\73"
  "\00\05\1b\69\31\36\78\38\5f\68\69\67\68\5f\65\78"
  "\74\65\6e\64\5f\6e\61\72\72\6f\77\5f\73\75\00\06"
  "\1a\69\31\36\78\38\5f\6c\6f\77\5f\65\78\74\65\6e"
  "\64\5f\6e\61\72\72\6f\77\5f\75\75\00\07\1a\69\31"
  "\36\78\38\5f\6c\6f\77\5f\65\78\74\65\6e\64\5f\6e"
  "\61\72\72\6f\77\5f\75\73\00\08\1b\69\31\36\78\38"
  "\5f\68\69\67\68\5f\65\78\74\65\6e\64\5f\6e\61\72"
  "\72\6f\77\5f\75\75\00\09\1b\69\31\36\78\38\5f\68"
  "\69\67\68\5f\65\78\74\65\6e\64\5f\6e\61\72\72\6f"
  "\77\5f\75\73\00\0a\1a\69\33\32\78\34\5f\6c\6f\77"
  "\5f\65\78\74\65\6e\64\5f\6e\61\72\72\6f\77\5f\73"
  "\73\00\0b\1a\69\33\32\78\34\5f\6c\6f\77\5f\65\78"
  "\74\65\6e\64\5f\6e\61\72\72\6f\77\5f\73\75\00\0c"
  "\1b\69\33\32\78\34\5f\68\69\67\68\5f\65\78\74\65"
  "\6e\64\5f\6e\61\72\72\6f\77\5f\73\73\00\0d\1b\69"
  "\33\32\78\34\5f\68\69\67\68\5f\65\78\74\65\6e\64"
  "\5f\6e\61\72\72\6f\77\5f\73\75\00\0e\1a\69\33\32"
  "\78\34\5f\6c\6f\77\5f\65\78\74\65\6e\64\5f\6e\61"
  "\72\72\6f\77\5f\75\75\00\0f\1a\69\33\32\78\34\5f"
  "\6c\6f\77\5f\65\78\74\65\6e\64\5f\6e\61\72\72\6f"
  "\77\5f\75\73\00\10\1b\69\33\32\78\34\5f\68\69\67"
  "\68\5f\65\78\74\65\6e\64\5f\6e\61\72\72\6f\77\5f"
  "\75\75\00\11\1b\69\33\32\78\34\5f\68\69\67\68\5f"
  "\65\78\74\65\6e\64\5f\6e\61\72\72\6f\77\5f\75\73"
  "\00\12\0a\bc\82\80\80\00\13\8c\80\80\80\00\00\20"
  "\00\20\01\fd\ae\01\fd\fa\01\0b\8c\80\80\80\00\00"
  "\20\00\20\01\fd\b1\01\fd\fa\01\0b\8c\80\80\80\00"
  "\00\20\00\20\01\fd\b5\01\fd\fb\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\65\fd\87\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\66\fd\87\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\65\fd\87\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\66\fd\87\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\66\fd\89\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\65\fd\89\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\66\fd\89\01\0b\8b\80\80\80"
  "\00\00\20\00\20\01\fd\65\fd\89\01\0b\8c\80\80\80"
  "\00\00\20\00\20\01\fd\85\01\fd\a7\01\0b\8c\80\80"
  "\80\00\00\20\00\20\01\fd\86\01\fd\a7\01\0b\8c\80"
  "\80\80\00\00\20\00\20\01\fd\85\01\fd\a7\01\0b\8c"
  "\80\80\80\00\00\20\00\20\01\fd\86\01\fd\a7\01\0b"
  "\8c\80\80\80\00\00\20\00\20\01\fd\86\01\fd\a9\01"
  "\0b\8c\80\80\80\00\00\20\00\20\01\fd\85\01\fd\a9"
  "\01\0b\8c\80\80\80\00\00\20\00\20\01\fd\86\01\fd"
  "\a9\01\0b\8c\80\80\80\00\00\20\00\20\01\fd\85\01"
  "\fd\a9\01\0b"
)
(assert_return
  (invoke "f32x4_convert_i32x4_s_add"
    (v128.const i32x4 0x1 0x2 0x3 0x4)
    (v128.const i32x4 0x2 0x3 0x4 0x5)
  )
  (v128.const f32x4 0x1.8p+1 0x1.4p+2 0x1.cp+2 0x1.2p+3)
)
(assert_return
  (invoke "f32x4_convert_i32x4_s_sub"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+0 0x0p+0 0x1p+0 0x1p+1)
)
(assert_return
  (invoke "f32x4_convert_i32x4_u_mul"
    (v128.const i32x4 0x1 0x2 0x3 0x4)
    (v128.const i32x4 0x1 0x2 0x3 0x4)
  )
  (v128.const f32x4 0x1p+0 0x1p+2 0x1.2p+3 0x1p+4)
)
(assert_return
  (invoke "i16x8_low_extend_narrow_ss"
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
  )
  (v128.const i16x8 0xff80 0xff80 0x7f 0xff80 0xff80 0xff80 0x7f 0xff80)
)
(assert_return
  (invoke "i16x8_low_extend_narrow_su"
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
  )
  (v128.const i16x8 0x0 0x0 0xffff 0x0 0x0 0x0 0xffff 0x0)
)
(assert_return
  (invoke "i16x8_high_extend_narrow_ss"
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
  )
  (v128.const i16x8 0xff80 0xff80 0x7f 0xff80 0xff80 0xff80 0x7f 0xff80)
)
(assert_return
  (invoke "i16x8_high_extend_narrow_su"
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
  )
  (v128.const i16x8 0x0 0x0 0xffff 0x0 0x0 0x0 0xffff 0x0)
)
(assert_return
  (invoke "i16x8_low_extend_narrow_uu"
    (v128.const i32x4 0x8001_8000 0xffff_8000 0x8001_8000 0xffff_8000)
    (v128.const i32x4 0x8001_8000 0xffff_8000 0x8001_8000 0xffff_8000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_low_extend_narrow_us"
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
  )
  (v128.const i16x8 0x80 0x80 0x7f 0x80 0x80 0x80 0x7f 0x80)
)
(assert_return
  (invoke "i16x8_high_extend_narrow_uu"
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
    (v128.const i32x4 0x8001_8000 0xffff_7fff 0x8001_8000 0xffff_7fff)
  )
  (v128.const i16x8 0x0 0x0 0xff 0x0 0x0 0x0 0xff 0x0)
)
(assert_return
  (invoke "i16x8_high_extend_narrow_us"
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
    (v128.const i32x4 0x8001_8000 0x8000_7fff 0x8001_8000 0x8000_7fff)
  )
  (v128.const i16x8 0x80 0x80 0x7f 0x80 0x80 0x80 0x7f 0x80)
)
(assert_return
  (invoke "i32x4_low_extend_narrow_ss"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4_low_extend_narrow_su"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "i32x4_high_extend_narrow_ss"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4_high_extend_narrow_su"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "i32x4_low_extend_narrow_uu"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff 0x0)
)
(assert_return
  (invoke "i32x4_low_extend_narrow_us"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
  )
  (v128.const i32x4 0x8000 0x8000 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4_high_extend_narrow_uu"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff 0x0)
)
(assert_return
  (invoke "i32x4_high_extend_narrow_us"
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0x7fff_ffff 0x800_0000)
  )
  (v128.const i32x4 0x8000 0x8000 0x7fff 0x7fff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\fa\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\fb\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\65\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\65\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\66\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\66\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\85\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\85\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\86\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\86\01\0b"
  )
  "type mismatch"
)
