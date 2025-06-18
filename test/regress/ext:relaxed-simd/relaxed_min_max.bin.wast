(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\89\80\80\80\00\08\00\00\00\00"
  "\00\00\00\00\07\b1\81\80\80\00\08\11\66\33\32\78"
  "\34\2e\72\65\6c\61\78\65\64\5f\6d\69\6e\00\00\11"
  "\66\33\32\78\34\2e\72\65\6c\61\78\65\64\5f\6d\61"
  "\78\00\01\11\66\36\34\78\32\2e\72\65\6c\61\78\65"
  "\64\5f\6d\69\6e\00\02\11\66\36\34\78\32\2e\72\65"
  "\6c\61\78\65\64\5f\6d\61\78\00\03\15\66\33\32\78"
  "\34\2e\72\65\6c\61\78\65\64\5f\6d\69\6e\5f\63\6d"
  "\70\00\04\15\66\33\32\78\34\2e\72\65\6c\61\78\65"
  "\64\5f\6d\61\78\5f\63\6d\70\00\05\15\66\36\34\78"
  "\32\2e\72\65\6c\61\78\65\64\5f\6d\69\6e\5f\63\6d"
  "\70\00\06\15\66\36\34\78\32\2e\72\65\6c\61\78\65"
  "\64\5f\6d\61\78\5f\63\6d\70\00\07\0a\97\81\80\80"
  "\00\08\89\80\80\80\00\00\20\00\20\01\fd\8d\02\0b"
  "\89\80\80\80\00\00\20\00\20\01\fd\8e\02\0b\89\80"
  "\80\80\00\00\20\00\20\01\fd\8f\02\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\90\02\0b\92\80\80\80\00\00"
  "\20\00\20\01\fd\8d\02\20\00\20\01\fd\8d\02\fd\37"
  "\0b\92\80\80\80\00\00\20\00\20\01\fd\8e\02\20\00"
  "\20\01\fd\8e\02\fd\37\0b\93\80\80\80\00\00\20\00"
  "\20\01\fd\8f\02\20\00\20\01\fd\8f\02\fd\d6\01\0b"
  "\93\80\80\80\00\00\20\00\20\01\fd\90\02\20\00\20"
  "\01\fd\90\02\fd\d6\01\0b"
)
(assert_return
  (invoke "f32x4.relaxed_min"
    (v128.const i32x4 0xffc0_0000 0x7fc0_0000 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffc0_0000 0x7fc0_0000)
  )
  (either
    (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
    (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
    (v128.const f32x4 0x0p+0 0x0p+0 nan:canonical nan:canonical)
    (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f32x4.relaxed_min"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x0 0x0 0x8000_0000)
  )
  (either
    (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 0x0p+0 -0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 -0x0p+0 0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f32x4.relaxed_max"
    (v128.const i32x4 0xffc0_0000 0x7fc0_0000 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffc0_0000 0x7fc0_0000)
  )
  (either
    (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
    (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
    (v128.const f32x4 0x0p+0 0x0p+0 nan:canonical nan:canonical)
    (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f32x4.relaxed_max"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x0 0x0 0x8000_0000)
  )
  (either
    (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 0x0p+0 -0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 -0x0p+0 0x0p+0 0x0p+0 -0x0p+0)
    (v128.const f32x4 -0x0p+0 -0x0p+0 0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_min"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (either
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
    (v128.const f64x2 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
  )
  (either
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_min"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x0)
  )
  (either
    (v128.const f64x2 -0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 -0x0p+0 0x0p+0)
    (v128.const f64x2 -0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_min"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (either
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_max"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (either
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
    (v128.const f64x2 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_max"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
  )
  (either
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
    (v128.const f64x2 nan:canonical nan:canonical)
    (v128.const f64x2 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_max"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x0)
  )
  (either
    (v128.const f64x2 0x0p+0 0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 -0x0p+0 0x0p+0)
    (v128.const f64x2 -0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f64x2.relaxed_max"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (either
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
    (v128.const f64x2 0x0p+0 -0x0p+0)
  )
)
(assert_return
  (invoke "f32x4.relaxed_min_cmp"
    (v128.const i32x4 0xffc0_0000 0x7fc0_0000 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "f32x4.relaxed_min_cmp"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x0 0x0 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "f32x4.relaxed_max_cmp"
    (v128.const i32x4 0xffc0_0000 0x7fc0_0000 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "f32x4.relaxed_max_cmp"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x0 0x0 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_min_cmp"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_min_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_min_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_min_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_max_cmp"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_max_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_max_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_max_cmp"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
