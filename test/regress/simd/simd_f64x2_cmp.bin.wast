(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\87\80\80\80\00\06\00\00\00\00"
  "\00\00\07\c3\80\80\80\00\06\08\66\36\34\78\32\2e"
  "\65\71\00\00\08\66\36\34\78\32\2e\6e\65\00\01\08"
  "\66\36\34\78\32\2e\6c\74\00\02\08\66\36\34\78\32"
  "\2e\6c\65\00\03\08\66\36\34\78\32\2e\67\74\00\04"
  "\08\66\36\34\78\32\2e\67\65\00\05\0a\cf\80\80\80"
  "\00\06\88\80\80\80\00\00\20\00\20\01\fd\47\0b\88"
  "\80\80\80\00\00\20\00\20\01\fd\48\0b\88\80\80\80"
  "\00\00\20\00\20\01\fd\49\0b\88\80\80\80\00\00\20"
  "\00\20\01\fd\4b\0b\88\80\80\80\00\00\20\00\20\01"
  "\fd\4a\0b\88\80\80\80\00\00\20\00\20\01\fd\4c\0b"
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xcbaa_bc8a 0x4b94_23cb 0xcbaa_bc8a 0x4b94_23cb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x472a_fffa 0x3bcd_2681 0x472a_fffa 0x3bcd_2681)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0x8c14_8fbd 0x4981_4ccb 0x8c14_8fbd 0x4981_4ccb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
    (v128.const i32x4 0xf47d_e981 0x43b1_2210 0xf47d_e981 0x43b1_2210)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.eq"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ne"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.lt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.le"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.gt"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.ge"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\47\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\48\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\49\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\4b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\4a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\4c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\47\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\47\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\48\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\48\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\49\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\49\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\4b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\4b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\4a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\4a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\4c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\4c\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\8e\80\80\80\00\0d\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\05\83\80\80\80\00\01\00\01\07"
  "\f0\81\80\80\00\0d\11\66\36\34\78\32\2e\65\71\2d"
  "\69\6e\2d\62\6c\6f\63\6b\00\00\11\66\36\34\78\32"
  "\2e\6e\65\2d\69\6e\2d\62\6c\6f\63\6b\00\01\11\66"
  "\36\34\78\32\2e\6c\74\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\02\11\66\36\34\78\32\2e\6c\65\2d\69\6e\2d\62"
  "\6c\6f\63\6b\00\03\11\66\36\34\78\32\2e\67\74\2d"
  "\69\6e\2d\62\6c\6f\63\6b\00\04\11\66\36\34\78\32"
  "\2e\67\65\2d\69\6e\2d\62\6c\6f\63\6b\00\05\0f\6e"
  "\65\73\74\65\64\2d\66\36\34\78\32\2e\65\71\00\06"
  "\0f\6e\65\73\74\65\64\2d\66\36\34\78\32\2e\6e\65"
  "\00\07\0f\6e\65\73\74\65\64\2d\66\36\34\78\32\2e"
  "\6c\74\00\08\0f\6e\65\73\74\65\64\2d\66\36\34\78"
  "\32\2e\6c\65\00\09\0f\6e\65\73\74\65\64\2d\66\36"
  "\34\78\32\2e\67\74\00\0a\0f\6e\65\73\74\65\64\2d"
  "\66\36\34\78\32\2e\67\65\00\0b\08\61\73\2d\70\61"
  "\72\61\6d\00\0c\0a\b7\85\80\80\00\0d\9d\80\80\80"
  "\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00\0b\02"
  "\7b\41\01\fd\00\04\00\0b\fd\47\0b\1a\0b\0b\9d\80"
  "\80\80\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00"
  "\0b\02\7b\41\01\fd\00\04\00\0b\fd\48\0b\1a\0b\0b"
  "\9d\80\80\80\00\00\02\40\02\7b\02\7b\41\00\fd\00"
  "\04\00\0b\02\7b\41\01\fd\00\04\00\0b\fd\49\0b\1a"
  "\0b\0b\9d\80\80\80\00\00\02\40\02\7b\02\7b\41\00"
  "\fd\00\04\00\0b\02\7b\41\01\fd\00\04\00\0b\fd\4b"
  "\0b\1a\0b\0b\9d\80\80\80\00\00\02\40\02\7b\02\7b"
  "\41\00\fd\00\04\00\0b\02\7b\41\01\fd\00\04\00\0b"
  "\fd\4a\0b\1a\0b\0b\9d\80\80\80\00\00\02\40\02\7b"
  "\02\7b\41\00\fd\00\04\00\0b\02\7b\41\01\fd\00\04"
  "\00\0b\fd\4c\0b\1a\0b\0b\c1\80\80\80\00\00\41\00"
  "\fd\00\04\00\41\01\fd\00\04\00\fd\47\41\02\fd\00"
  "\04\00\41\03\fd\00\04\00\fd\47\fd\47\41\00\fd\00"
  "\04\00\41\01\fd\00\04\00\fd\47\41\02\fd\00\04\00"
  "\41\03\fd\00\04\00\fd\47\fd\47\fd\47\1a\0b\c1\80"
  "\80\80\00\00\41\00\fd\00\04\00\41\01\fd\00\04\00"
  "\fd\48\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\48"
  "\fd\48\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\48"
  "\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\48\fd\48"
  "\fd\48\1a\0b\c1\80\80\80\00\00\41\00\fd\00\04\00"
  "\41\01\fd\00\04\00\fd\49\41\02\fd\00\04\00\41\03"
  "\fd\00\04\00\fd\49\fd\49\41\00\fd\00\04\00\41\01"
  "\fd\00\04\00\fd\49\41\02\fd\00\04\00\41\03\fd\00"
  "\04\00\fd\49\fd\49\fd\49\1a\0b\c1\80\80\80\00\00"
  "\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\4b\41\02"
  "\fd\00\04\00\41\03\fd\00\04\00\fd\4b\fd\4b\41\00"
  "\fd\00\04\00\41\01\fd\00\04\00\fd\4b\41\02\fd\00"
  "\04\00\41\03\fd\00\04\00\fd\4b\fd\4b\fd\4b\1a\0b"
  "\c1\80\80\80\00\00\41\00\fd\00\04\00\41\01\fd\00"
  "\04\00\fd\4a\41\02\fd\00\04\00\41\03\fd\00\04\00"
  "\fd\4a\fd\4a\41\00\fd\00\04\00\41\01\fd\00\04\00"
  "\fd\4a\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\4a"
  "\fd\4a\fd\4a\1a\0b\c1\80\80\80\00\00\41\00\fd\00"
  "\04\00\41\01\fd\00\04\00\fd\4c\41\02\fd\00\04\00"
  "\41\03\fd\00\04\00\fd\4c\fd\4c\41\00\fd\00\04\00"
  "\41\01\fd\00\04\00\fd\4c\41\02\fd\00\04\00\41\03"
  "\fd\00\04\00\fd\4c\fd\4c\fd\4c\1a\0b\c1\80\80\80"
  "\00\00\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\49"
  "\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\4b\fd\48"
  "\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\4c\41\02"
  "\fd\00\04\00\41\03\fd\00\04\00\fd\47\fd\4a\fd\47"
  "\1a\0b"
)
(assert_return (invoke "f64x2.eq-in-block"))
(assert_return (invoke "f64x2.ne-in-block"))
(assert_return (invoke "f64x2.lt-in-block"))
(assert_return (invoke "f64x2.le-in-block"))
(assert_return (invoke "f64x2.gt-in-block"))
(assert_return (invoke "f64x2.ge-in-block"))
(assert_return (invoke "nested-f64x2.eq"))
(assert_return (invoke "nested-f64x2.ne"))
(assert_return (invoke "nested-f64x2.lt"))
(assert_return (invoke "nested-f64x2.le"))
(assert_return (invoke "nested-f64x2.gt"))
(assert_return (invoke "nested-f64x2.ge"))
(assert_return (invoke "as-param"))
