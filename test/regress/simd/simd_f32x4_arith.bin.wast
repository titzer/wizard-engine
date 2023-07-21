(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7b\7b\01\7b\60\01\7b\01\7b\03\87\80\80\80\00"
  "\06\00\00\00\00\01\01\07\ca\80\80\80\00\06\09\66"
  "\33\32\78\34\2e\61\64\64\00\00\09\66\33\32\78\34"
  "\2e\73\75\62\00\01\09\66\33\32\78\34\2e\6d\75\6c"
  "\00\02\09\66\33\32\78\34\2e\64\69\76\00\03\09\66"
  "\33\32\78\34\2e\6e\65\67\00\04\0a\66\33\32\78\34"
  "\2e\73\71\72\74\00\05\0a\d1\80\80\80\00\06\89\80"
  "\80\80\00\00\20\00\20\01\fd\e4\01\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\e5\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\e6\01\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\e7\01\0b\87\80\80\80\00\00\20\00\fd\e1"
  "\01\0b\87\80\80\80\00\00\20\00\fd\e3\01\0b"
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-148 0x1p-148 0x1p-148 0x1p-148)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-148 -0x1p-148 -0x1p-148 -0x1p-148)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-125 0x1p-125 0x1p-125 0x1p-125)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-125 -0x1p-125 -0x1p-125 -0x1p-125)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1.8p+0 0x1.8p+0 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.8p+0 0x1.8p+0 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+1 0x1p+1 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+1 -0x1p+1 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
    0x1.d6f3_46p+27
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
    0x1.fe9a_f6p+90
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
    0x1.b25f_fep-36
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
    0x1.2345_68p+57
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
    0x1.2345_68p+76
  )
)
(assert_return
  (invoke "f32x4.add"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
    0x1.2345_68p+38
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-148 0x1p-148 0x1p-148 0x1p-148)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-148 -0x1p-148 -0x1p-148 -0x1p-148)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
    0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
    0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-125 0x1p-125 0x1p-125 0x1p-125)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
    -0x1.0000_02p-126
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
    -0x1.ffff_fcp-127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-125 -0x1p-125 -0x1p-125 -0x1p-125)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1.8p+0 0x1.8p+0 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1.8p+0 0x1.8p+0 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+1 0x1p+1 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+1 -0x1p+1 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2 0x1.721f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2 0x1.b21f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2 0x1.521f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2 0x1.d21f_b6p+2)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
    -0x1.b21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
    -0x1.721f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
    -0x1.d21f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
    -0x1.521f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sub"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.8p-147 0x1.8p-147 0x1.8p-147 0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.8p-147 0x1.8p-147 0x1.8p-147 0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-127 0x1p-127 0x1p-127 0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-127 -0x1p-127 -0x1p-127 -0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-127 -0x1p-127 -0x1p-127 -0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-127 0x1p-127 0x1p-127 0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-127 0x1p-127 0x1p-127 0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-127 -0x1p-127 -0x1p-127 -0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-2 0x1p-2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-2 -0x1p-2 -0x1p-2 -0x1p-2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-127 -0x1p-127 -0x1p-127 -0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-127 0x1p-127 0x1p-127 0x1p-127)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-2 -0x1p-2 -0x1p-2 -0x1p-2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-2 0x1p-2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1.8p-147 0x1.8p-147 0x1.8p-147 0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.3bd3_cep+5 0x1.3bd3_cep+5 0x1.3bd3_cep+5 0x1.3bd3_cep+5)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147 -0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1.8p-147 0x1.8p-147 0x1.8p-147 0x1.8p-147)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
    -0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
    0x1.921f_b6p-124
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
    -0x1.921f_b6p+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1 0x1.921f_b6p+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
    -0x1.3bd3_cep+5
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.3bd3_cep+5 0x1.3bd3_cep+5 0x1.3bd3_cep+5 0x1.3bd3_cep+5)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
    -0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
    0x1.ffff_fep-22
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
    -0x1.ffff_fep+1
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1 0x1.ffff_fep+1)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
    -0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
    0x1.ffff_fep+126
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
    0x1.b131_16p+53
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
    0x1.7084_cep-73
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
    0x1.4b66_dep+112
  )
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.mul"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
    0x1.4b66_dep+74
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-23 0x1p-23 0x1p-23 0x1p-23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-23 -0x1p-23 -0x1p-23 -0x1p-23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-148 0x1p-148 0x1p-148 0x1p-148)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-148 -0x1p-148 -0x1p-148 -0x1p-148)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-23 -0x1p-23 -0x1p-23 -0x1p-23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-23 0x1p-23 0x1p-23 0x1p-23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-148 -0x1p-148 -0x1p-148 -0x1p-148)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-148 0x1p-148 0x1p-148 0x1p-148)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p+23 0x1p+23 0x1p+23 0x1p+23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+23 -0x1p+23 -0x1p+23 -0x1p+23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-125 0x1p-125 0x1p-125 0x1p-125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-125 -0x1p-125 -0x1p-125 -0x1p-125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3p-129 0x1.45f3p-129 0x1.45f3p-129 0x1.45f3p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.45f3p-129 -0x1.45f3p-129 -0x1.45f3p-129 -0x1.45f3p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+23 -0x1p+23 -0x1p+23 -0x1p+23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p+23 0x1p+23 0x1p+23 0x1p+23)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-125 -0x1p-125 -0x1p-125 -0x1p-125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-125 0x1p-125 0x1p-125 0x1p-125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1.45f3p-129 -0x1.45f3p-129 -0x1.45f3p-129 -0x1.45f3p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3p-129 0x1.45f3p-129 0x1.45f3p-129 0x1.45f3p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+125 0x1p+125 0x1p+125 0x1p+125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+125 -0x1p+125 -0x1p+125 -0x1p+125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3_06p-4 0x1.45f3_06p-4 0x1.45f3_06p-4 0x1.45f3_06p-4)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p-129 0x1p-129 0x1p-129 0x1p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x1p-129 -0x1p-129 -0x1p-129 -0x1p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+125 -0x1p+125 -0x1p+125 -0x1p+125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p+125 0x1p+125 0x1p+125 0x1p+125)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
    -0x1.45f3_06p-4
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3_06p-4 0x1.45f3_06p-4 0x1.45f3_06p-4 0x1.45f3_06p-4)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p-129 -0x1p-129 -0x1p-129 -0x1p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x1p-129 0x1p-129 0x1p-129 0x1p-129)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+126 0x1p+126 0x1p+126 0x1p+126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+126 -0x1p+126 -0x1p+126 -0x1p+126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p+1 0x1p+1 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p+1 -0x1p+1 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3_06p-3 0x1.45f3_06p-3 0x1.45f3_06p-3 0x1.45f3_06p-3)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p-128 0x1p-128 0x1p-128 0x1p-128)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x1p-128 -0x1p-128 -0x1p-128 -0x1p-128)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+126 -0x1p+126 -0x1p+126 -0x1p+126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p+126 0x1p+126 0x1p+126 0x1p+126)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p+1 -0x1p+1 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p+1 0x1p+1 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
    -0x1.45f3_06p-3
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.45f3_06p-3 0x1.45f3_06p-3 0x1.45f3_06p-3 0x1.45f3_06p-3)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p-128 -0x1p-128 -0x1p-128 -0x1p-128)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x1p-128 0x1p-128 0x1p-128 0x1p-128)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.921f_b8p-126
    0x1.921f_b8p-126
    0x1.921f_b8p-126
    0x1.921f_b8p-126
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
    -0x1.921f_b6p+3
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3 0x1.921f_b6p+3)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
    -0x1.921f_b8p-126
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.921f_b8p-126
    0x1.921f_b8p-126
    0x1.921f_b8p-126
    0x1.921f_b8p-126
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    0x1.45f3_04p+125
    0x1.45f3_04p+125
    0x1.45f3_04p+125
    0x1.45f3_04p+125
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
    -0x1.45f3_04p+125
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    0x1.45f3_04p+125
    0x1.45f3_04p+125
    0x1.45f3_04p+125
    0x1.45f3_04p+125
  )
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.div"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sqrt" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.sqrt" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4
    0x1.6a09_e6p-75
    0x1.6a09_e6p-75
    0x1.6a09_e6p-75
    0x1.6a09_e6p-75
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-63 0x1p-63 0x1p-63 0x1p-63)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1.6a09_e6p-1 0x1.6a09_e6p-1 0x1.6a09_e6p-1 0x1.6a09_e6p-1)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.40d9_32p+1 0x1.40d9_32p+1 0x1.40d9_32p+1 0x1.40d9_32p+1)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+63
    0x1.ffff_fep+63
    0x1.ffff_fep+63
    0x1.ffff_fep+63
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
    0x1.5b38_e4p+13
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
    0x1.ff4d_5cp+44
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19 0x1.d797_dp-19)
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
    0x1.1111_12p+28
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
    0x1.822c_b2p+37
  )
)
(assert_return
  (invoke "f32x4.sqrt"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
    0x1.822c_b2p+18
  )
)
(assert_return
  (invoke "f32x4.neg" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.neg" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 -nan:0x40_0000 -nan:0x40_0000 -nan:0x40_0000 -nan:0x40_0000)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:0x40_0000 nan:0x40_0000 nan:0x40_0000 nan:0x40_0000)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 -nan:0x20_0000 -nan:0x20_0000 -nan:0x20_0000 -nan:0x20_0000)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:0x20_0000 nan:0x20_0000 nan:0x20_0000 nan:0x20_0000)
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
    -0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
    -0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
    -0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
    -0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.neg"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
    -0x1.2345_68p+37
  )
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7b\03\84\80\80\80\00\03\00\00\00\07\ba\80"
  "\80\80\00\03\10\66\33\32\78\34\5f\73\71\72\74\5f"
  "\61\72\69\74\68\00\00\10\66\33\32\78\34\5f\73\71"
  "\72\74\5f\63\61\6e\6f\6e\00\01\10\66\33\32\78\34"
  "\5f\73\71\72\74\5f\6d\69\78\65\64\00\02\0a\d5\80"
  "\80\80\00\03\97\80\80\80\00\00\fd\0c\00\00\a0\7f"
  "\00\00\a0\ff\00\00\80\41\00\00\c8\41\fd\e3\01\0b"
  "\97\80\80\80\00\00\fd\0c\00\00\80\bf\00\00\c0\7f"
  "\00\00\80\40\00\00\10\41\fd\e3\01\0b\97\80\80\80"
  "\00\00\fd\0c\00\00\80\ff\00\00\a0\7f\00\00\10\42"
  "\00\00\44\42\fd\e3\01\0b"
)
(assert_return
  (invoke "f32x4_sqrt_arith")
  (v128.const f32x4 nan:arithmetic nan:arithmetic 0x1p+2 0x1.4p+2)
)
(assert_return
  (invoke "f32x4_sqrt_canon")
  (v128.const f32x4 nan:canonical nan:canonical 0x1p+1 0x1.8p+1)
)
(assert_return
  (invoke "f32x4_sqrt_mixed")
  (v128.const f32x4 nan:canonical nan:arithmetic 0x1.8p+2 0x1.cp+2)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\e1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\e3\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\e4\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\e5\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\e6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\e7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e3\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\e4\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e4\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\e5\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e5\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\e6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\e7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\e7\01\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\03\7b\7b\7b\01\7b\60\02\7b\7b\01\7b\03\91\80\80"
  "\80\00\10\00\00\00\00\00\00\00\00\01\01\01\01\01"
  "\01\01\01\07\a5\81\80\80\00\10\07\61\64\64\2d\73"
  "\75\62\00\00\07\64\69\76\2d\61\64\64\00\01\07\64"
  "\69\76\2d\6d\75\6c\00\02\07\64\69\76\2d\73\75\62"
  "\00\03\07\6d\75\6c\2d\61\64\64\00\04\07\6d\75\6c"
  "\2d\64\69\76\00\05\07\6d\75\6c\2d\73\75\62\00\06"
  "\07\73\75\62\2d\61\64\64\00\07\07\61\64\64\2d\6e"
  "\65\67\00\08\08\61\64\64\2d\73\71\72\74\00\09\07"
  "\64\69\76\2d\6e\65\67\00\0a\08\64\69\76\2d\73\71"
  "\72\74\00\0b\07\6d\75\6c\2d\6e\65\67\00\0c\08\6d"
  "\75\6c\2d\73\71\72\74\00\0d\07\73\75\62\2d\6e\65"
  "\67\00\0e\08\73\75\62\2d\73\71\72\74\00\0f\0a\a1"
  "\82\80\80\00\10\8e\80\80\80\00\00\20\00\20\01\fd"
  "\e5\01\20\02\fd\e4\01\0b\8e\80\80\80\00\00\20\00"
  "\20\01\fd\e4\01\20\02\fd\e7\01\0b\8e\80\80\80\00"
  "\00\20\00\20\01\fd\e6\01\20\02\fd\e7\01\0b\8e\80"
  "\80\80\00\00\20\00\20\01\fd\e5\01\20\02\fd\e7\01"
  "\0b\8e\80\80\80\00\00\20\00\20\01\fd\e4\01\20\02"
  "\fd\e6\01\0b\8e\80\80\80\00\00\20\00\20\01\fd\e7"
  "\01\20\02\fd\e6\01\0b\8e\80\80\80\00\00\20\00\20"
  "\01\fd\e5\01\20\02\fd\e6\01\0b\8e\80\80\80\00\00"
  "\20\00\20\01\fd\e4\01\20\02\fd\e5\01\0b\8c\80\80"
  "\80\00\00\20\00\fd\e1\01\20\01\fd\e4\01\0b\8c\80"
  "\80\80\00\00\20\00\fd\e3\01\20\01\fd\e4\01\0b\8c"
  "\80\80\80\00\00\20\00\fd\e1\01\20\01\fd\e7\01\0b"
  "\8c\80\80\80\00\00\20\00\fd\e3\01\20\01\fd\e7\01"
  "\0b\8c\80\80\80\00\00\20\00\fd\e1\01\20\01\fd\e6"
  "\01\0b\8c\80\80\80\00\00\20\00\fd\e3\01\20\01\fd"
  "\e6\01\0b\8c\80\80\80\00\00\20\00\fd\e1\01\20\01"
  "\fd\e5\01\0b\8c\80\80\80\00\00\20\00\fd\e3\01\20"
  "\01\fd\e5\01\0b"
)
(assert_return
  (invoke "add-sub"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "div-add"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.4p+2 0x1.4p+2 0x1.4p+2 0x1.4p+2)
)
(assert_return
  (invoke "div-mul"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x4080_0000 0x4080_0000 0x4080_0000 0x4080_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.2p+4 0x1.2p+4 0x1.2p+4 0x1.2p+4)
)
(assert_return
  (invoke "div-sub"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1p+2 0x1p+2 0x1p+2 0x1p+2)
)
(assert_return
  (invoke "mul-add"
    (v128.const i32x4 0x3fa0_0000 0x3fa0_0000 0x3fa0_0000 0x3fa0_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.8p-2 0x1.8p-2 0x1.8p-2 0x1.8p-2)
)
(assert_return
  (invoke "mul-div"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.2p+1 0x1.2p+1 0x1.2p+1 0x1.2p+1)
)
(assert_return
  (invoke "mul-sub"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1p-2 0x1p-2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "sub-add"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
  )
  (v128.const f32x4 0x1.4p+0 0x1.4p+0 0x1.4p+0 0x1.4p+0)
)
(assert_return
  (invoke "add-neg"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "add-sqrt"
    (v128.const i32x4 0x4010_0000 0x4010_0000 0x4010_0000 0x4010_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.cp+0 0x1.cp+0 0x1.cp+0 0x1.cp+0)
)
(assert_return
  (invoke "div-neg"
    (v128.const i32x4 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "div-sqrt"
    (v128.const i32x4 0x4010_0000 0x4010_0000 0x4010_0000 0x4010_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.8p+2 0x1.8p+2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "mul-neg"
    (v128.const i32x4 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 -0x1.8p-2 -0x1.8p-2 -0x1.8p-2 -0x1.8p-2)
)
(assert_return
  (invoke "mul-sqrt"
    (v128.const i32x4 0x4010_0000 0x4010_0000 0x4010_0000 0x4010_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.8p-2 0x1.8p-2 0x1.8p-2 0x1.8p-2)
)
(assert_return
  (invoke "sub-neg"
    (v128.const i32x4 0x3f90_0000 0x3f90_0000 0x3f90_0000 0x3f90_0000)
    (v128.const i32x4 0x3e00_0000 0x3e00_0000 0x3e00_0000 0x3e00_0000)
  )
  (v128.const f32x4 -0x1.4p+0 -0x1.4p+0 -0x1.4p+0 -0x1.4p+0)
)
(assert_return
  (invoke "sub-sqrt"
    (v128.const i32x4 0x4010_0000 0x4010_0000 0x4010_0000 0x4010_0000)
    (v128.const i32x4 0x3e80_0000 0x3e80_0000 0x3e80_0000 0x3e80_0000)
  )
  (v128.const f32x4 0x1.4p+0 0x1.4p+0 0x1.4p+0 0x1.4p+0)
)
