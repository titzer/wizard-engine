(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\82\80\80\80\00\01\00\07\97\80"
  "\80\80\00\01\13\69\31\36\78\38\2e\71\31\35\6d\75"
  "\6c\72\5f\73\61\74\5f\73\00\00\0a\8f\80\80\80\00"
  "\01\89\80\80\80\00\00\20\00\20\01\fd\82\01\0b"
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i16x8 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i16x8 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xc001_c001 0xc001_c001 0xc001_c001 0xc001_c001)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i16x8 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i16x8 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000 0x2000)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i16x8 0x2001 0x2001 0x2001 0x2001 0x2001 0x2001 0x2001 0x2001)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8002_8002 0x8002_8002 0x8002_8002 0x8002_8002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i16x8 0x7ffe 0x7ffe 0x7ffe 0x7ffe 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.q15mulr_sat_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\82\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\82\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\82\01\0b"
  )
  "type mismatch"
)
