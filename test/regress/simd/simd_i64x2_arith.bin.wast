(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7b\7b\01\7b\60\01\7b\01\7b\03\85\80\80\80\00"
  "\04\00\00\00\01\07\b1\80\80\80\00\04\09\69\36\34"
  "\78\32\2e\61\64\64\00\00\09\69\36\34\78\32\2e\73"
  "\75\62\00\01\09\69\36\34\78\32\2e\6d\75\6c\00\02"
  "\09\69\36\34\78\32\2e\6e\65\67\00\03\0a\b7\80\80"
  "\80\00\04\89\80\80\80\00\00\20\00\20\01\fd\ce\01"
  "\0b\89\80\80\80\00\00\20\00\20\01\fd\d1\01\0b\89"
  "\80\80\80\00\00\20\00\20\01\fd\d5\01\0b\87\80\80"
  "\80\00\00\20\00\fd\c1\01\0b"
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x2 0x2)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x3fff_ffff 0xffff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0xc000_0000 0x1 0xc000_0000)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xbfff_ffff 0xffff_ffff 0xbfff_ffff)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_fffd 0x7fff_ffff 0xffff_fffd 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_fffe 0x7fff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_fffe 0x7fff_ffff 0xffff_fffe 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x2 0x8000_0000 0x2 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_fffe 0x7fff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x3fff_ffff 0xffff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0xc000_0000 0x1 0xc000_0000)
    (v128.const i32x4 0xf000_0001 0xfbff_ffff 0xf000_0001 0xfbff_ffff)
  )
  (v128.const i64x2 0xbbff_ffff_f000_0002 0xbbff_ffff_f000_0002)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0x0 0xfc00_0000 0x0 0xfc00_0000)
  )
  (v128.const i64x2 0xbc00_0000_0000_0000 0xbc00_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0xffff_ffff 0xfbff_ffff 0xffff_ffff 0xfbff_ffff)
  )
  (v128.const i64x2 0xbbff_ffff_ffff_ffff 0xbbff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7ff_ffff 0xffff_ffff 0x7ff_ffff)
  )
  (v128.const i64x2 0x87ff_ffff_ffff_fffe 0x87ff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0xbff0_0000_0000_0000 0xbff0_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0x3ff0_0000_0000_0000 0x3ff0_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x7ff0_0000_0000_0001 0x7ff0_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0xfff0_0000_0000_0001 0xfff0_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x7ff8_0000_0000_0001 0x7ff8_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0x3)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
  )
  (v128.const i64x2 0x2244_21e8_fbd3_022a 0x2244_21e8_fbd3_022a)
)
(assert_return
  (invoke "i64x2.add"
    (v128.const i32x4 0x90ab_cdef 0x1234_5678 0x90ab_cdef 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x90ab_cdef 0x1234_5678 0x90ab_cdef)
  )
  (v128.const i64x2 0xa2e0_2467_a2e0_2467 0xa2e0_2467_a2e0_2467)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x2 0x2)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x3fff_ffff 0xffff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0xc000_0000 0x1 0xc000_0000)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xbfff_ffff 0xffff_ffff 0xbfff_ffff)
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_fffd 0x7fff_ffff 0xffff_fffd 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_fffc 0x7fff_ffff_ffff_fffc)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_fffe 0x7fff_ffff 0xffff_fffe 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_fffd 0x7fff_ffff_ffff_fffd)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x2 0x8000_0000 0x2 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0003 0x8000_0000_0000_0003)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0002 0x8000_0000_0000_0002)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x3fff_ffff 0xffff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0xc000_0000 0x1 0xc000_0000)
    (v128.const i32x4 0xf000_0001 0xfbff_ffff 0xf000_0001 0xfbff_ffff)
  )
  (v128.const i64x2 0xc400_0000_1000_0000 0xc400_0000_1000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0x0 0xfc00_0000 0x0 0xfc00_0000)
  )
  (v128.const i64x2 0xc400_0000_0000_0000 0xc400_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (v128.const i32x4 0xffff_ffff 0xfbff_ffff 0xffff_ffff 0xfbff_ffff)
  )
  (v128.const i64x2 0xc400_0000_0000_0001 0xc400_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0xffff_ffff 0x7ff_ffff 0xffff_ffff 0x7ff_ffff)
  )
  (v128.const i64x2 0x7800_0000_0000_0000 0x7800_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_fffe 0x7fff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_fffe 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x2 0x2)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x2 0x2)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x2 0x2)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i64x2 0x4010_0000_0000_0000 0x4010_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i64x2 0xc010_0000_0000_0000 0xc010_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i64x2 0x8010_0000_0000_0001 0x8010_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i64x2 0x10_0000_0000_0001 0x10_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i64x2 0x8008_0000_0000_0001 0x8008_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x2)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0xed2f_8115 0x2c9c_7076 0xed2f_8115 0x2c9c_7076)
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
  )
  (v128.const i64x2 0x1b7a_5f82_6f46_0000 0x1b7a_5f82_6f46_0000)
)
(assert_return
  (invoke "i64x2.sub"
    (v128.const i32x4 0x8765_4321 0x90ab_cdef 0x8765_4321 0x90ab_cdef)
    (v128.const i32x4 0x90ab_cdef 0x1234_5678 0x90ab_cdef 0x1234_5678)
  )
  (v128.const i64x2 0x7e77_7776_f6b9_7532 0x7e77_7776_f6b9_7532)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_fffe 0x7fff_ffff 0xffff_fffe 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0002 0x8000_0000_0000_0002)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000))
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x1 0x8000_0000 0x1 0x8000_0000))
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0001 0x8000_0000_0000_0001)
)
(assert_return
  (invoke "i64x2.neg" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\03\7b\7b\7b\01\7b\60\02\7b\7b\01\7b\03\88\80\80"
  "\80\00\07\00\00\00\00\01\01\01\07\c7\80\80\80\00"
  "\07\07\61\64\64\2d\73\75\62\00\00\07\6d\75\6c\2d"
  "\61\64\64\00\01\07\6d\75\6c\2d\73\75\62\00\02\07"
  "\73\75\62\2d\61\64\64\00\03\07\61\64\64\2d\6e\65"
  "\67\00\04\07\6d\75\6c\2d\6e\65\67\00\05\07\73\75"
  "\62\2d\6e\65\67\00\06\0a\80\81\80\80\00\07\8e\80"
  "\80\80\00\00\20\00\20\01\fd\d1\01\20\02\fd\ce\01"
  "\0b\8e\80\80\80\00\00\20\00\20\01\fd\ce\01\20\02"
  "\fd\d5\01\0b\8e\80\80\80\00\00\20\00\20\01\fd\d1"
  "\01\20\02\fd\d5\01\0b\8e\80\80\80\00\00\20\00\20"
  "\01\fd\ce\01\20\02\fd\d1\01\0b\8c\80\80\80\00\00"
  "\20\00\fd\c1\01\20\01\fd\ce\01\0b\8c\80\80\80\00"
  "\00\20\00\fd\c1\01\20\01\fd\d5\01\0b\8c\80\80\80"
  "\00\00\20\00\fd\c1\01\20\01\fd\d1\01\0b"
)
(assert_return
  (invoke "add-sub"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0x1)
)
(assert_return
  (invoke "mul-add"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x2 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0x4)
)
(assert_return
  (invoke "mul-sub"
    (v128.const i32x4 0x0 0x0 0x2 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x1)
)
(assert_return
  (invoke "sub-add"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
    (v128.const i32x4 0x0 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0x1)
)
(assert_return
  (invoke "add-neg"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "mul-neg"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x2 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "sub-neg"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x1 0x0)
  )
  (v128.const i64x2 0x0 0xffff_ffff_ffff_fffe)
)
