(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7b\7b\01\7b\60\01\7b\01\7b\03\85\80\80\80\00"
  "\04\00\00\00\01\07\b1\80\80\80\00\04\09\69\33\32"
  "\78\34\2e\61\64\64\00\00\09\69\33\32\78\34\2e\73"
  "\75\62\00\01\09\69\33\32\78\34\2e\6d\75\6c\00\02"
  "\09\69\33\32\78\34\2e\6e\65\67\00\03\0a\b7\80\80"
  "\80\00\04\89\80\80\80\00\00\20\00\20\01\fd\ae\01"
  "\0b\89\80\80\80\00\00\20\00\20\01\fd\b1\01\0b\89"
  "\80\80\80\00\00\20\00\20\01\fd\b5\01\0b\87\80\80"
  "\80\00\00\20\00\fd\a1\01\0b"
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const i32x4 0x7f80_0001 0x7f80_0001 0x7f80_0001 0x7f80_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const i32x4 0xff80_0001 0xff80_0001 0xff80_0001 0xff80_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0x7fc0_0001 0x7fc0_0001 0x7fc0_0001 0x7fc0_0001)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_fffe 0xffff_fffd)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
  )
  (v128.const i32x4 0x0 0x3 0x6 0x9)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i32x4 0x932c_05a4 0x932c_05a4 0x932c_05a4 0x932c_05a4)
)
(assert_return
  (invoke "i32x4.add"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0xa2e0_2467 0xa2e0_2467 0xa2e0_2467 0xa2e0_2467)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffc 0x7fff_fffc 0x7fff_fffc 0x7fff_fffc)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0003 0x8000_0003 0x8000_0003 0x8000_0003)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const i32x4 0x4080_0000 0x4080_0000 0x4080_0000 0x4080_0000)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const i32x4 0xc080_0000 0xc080_0000 0xc080_0000 0xc080_0000)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const i32x4 0x8080_0001 0x8080_0001 0x8080_0001 0x8080_0001)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const i32x4 0x80_0001 0x80_0001 0x80_0001 0x80_0001)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0x8040_0001 0x8040_0001 0x8040_0001 0x8040_0001)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_fffe 0xffff_fffd)
  )
  (v128.const i32x4 0x0 0x2 0x4 0x6)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_fffe 0xffff_fffd)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0xbf9a_69d2 0xbf9a_69d2 0xbf9a_69d2 0xbf9a_69d2)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i32x4 0x7604_6700 0x7604_6700 0x7604_6700 0x7604_6700)
)
(assert_return
  (invoke "i32x4.sub"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0x7e77_7777 0x7e77_7777 0x7e77_7777 0x7e77_7777)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
    (v128.const i32x4 0x1010_1010 0x1010_1010 0x1010_1010 0x1010_1010)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x2_0000 0x2_0000 0x2_0000 0x2_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_fffe 0xffff_fffd)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_fffc 0xffff_fff7)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
  )
  (v128.const i32x4 0x0 0x2 0x8 0x12)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x3ade_68b1 0x3ade_68b1 0x3ade_68b1 0x3ade_68b1)
  )
  (v128.const i32x4 0xfbff_5385 0xfbff_5385 0xfbff_5385 0xfbff_5385)
)
(assert_return
  (invoke "i32x4.mul"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0x2a42_d208 0x2a42_d208 0x2a42_d208 0x2a42_d208)
)
(assert_return
  (invoke "i32x4.neg" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.neg" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
  )
  (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.neg" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.neg"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\a1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\ae\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\b1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\b5\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\a1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\ae\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\ae\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\b1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\b1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\b5\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\b5\01\0b"
  )
  "type mismatch"
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
  "\80\80\00\00\20\00\20\01\fd\b1\01\20\02\fd\ae\01"
  "\0b\8e\80\80\80\00\00\20\00\20\01\fd\ae\01\20\02"
  "\fd\b5\01\0b\8e\80\80\80\00\00\20\00\20\01\fd\b1"
  "\01\20\02\fd\b5\01\0b\8e\80\80\80\00\00\20\00\20"
  "\01\fd\ae\01\20\02\fd\b1\01\0b\8c\80\80\80\00\00"
  "\20\00\fd\a1\01\20\01\fd\ae\01\0b\8c\80\80\80\00"
  "\00\20\00\fd\a1\01\20\01\fd\b5\01\0b\8c\80\80\80"
  "\00\00\20\00\fd\a1\01\20\01\fd\b1\01\0b"
)
(assert_return
  (invoke "add-sub"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
  )
  (v128.const i32x4 0x0 0x1 0x2 0x3)
)
(assert_return
  (invoke "mul-add"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x2 0x2 0x2 0x2)
  )
  (v128.const i32x4 0x0 0x4 0x8 0xc)
)
(assert_return
  (invoke "mul-sub"
    (v128.const i32x4 0x0 0x2 0x4 0x6)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
  )
  (v128.const i32x4 0x0 0x1 0x4 0x9)
)
(assert_return
  (invoke "sub-add"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
    (v128.const i32x4 0x0 0x2 0x4 0x6)
  )
  (v128.const i32x4 0x0 0x1 0x2 0x3)
)
(assert_return
  (invoke "add-neg"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "mul-neg"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x2 0x2 0x2 0x2)
  )
  (v128.const i32x4 0x0 0xffff_fffe 0xffff_fffc 0xffff_fffa)
)
(assert_return
  (invoke "sub-neg"
    (v128.const i32x4 0x0 0x1 0x2 0x3)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
  )
  (v128.const i32x4 0x0 0xffff_fffe 0xffff_fffc 0xffff_fffa)
)
