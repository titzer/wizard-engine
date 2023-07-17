(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\82\80\80\80\00\01\00\07\8a\80"
  "\80\80\00\01\06\61\6e\64\6e\6f\74\00\00\0a\8e\80"
  "\80\80\00\01\88\80\80\80\00\00\20\00\20\01\fd\4f"
  "\0b"
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xff 0xff 0xff 0xff)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
  )
  (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xff 0xff 0xff 0xff)
    (v128.const i32x4 0x80 0x80 0x80 0x80)
  )
  (v128.const i32x4 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0xa 0x80 0x5 0xa5)
  )
  (v128.const i32x4 0xaaaa_aaa0 0xaaaa_aa2a 0xaaaa_aaaa 0xaaaa_aa0a)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555 0xffff 0x55ff 0x5fff)
  )
  (v128.const i32x4 0x5555_0000 0x5555_0000 0x5555_0000 0x5555_0000)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "andnot"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0x214_1210 0x214_1210 0x214_1210 0x214_1210)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\4f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\4f\0b"
  )
  "type mismatch"
)
