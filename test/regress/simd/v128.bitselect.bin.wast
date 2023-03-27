(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\82\80\80\80\00\01\00\07\8d"
  "\80\80\80\00\01\09\62\69\74\73\65\6c\65\63\74\00"
  "\00\0a\90\80\80\80\00\01\8a\80\80\80\00\00\20\00"
  "\20\01\20\02\fd\52\0b"
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0xbbbb_bbbb 0xbbbb_bbbb 0xbbbb_bbbb 0xbbbb_bbbb)
    (v128.const i32x4 0x1111_1111 0x1111_1111 0x1111_1111 0x1111_1111)
  )
  (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0xbbbb_bbbb 0xbbbb_bbbb 0xbbbb_bbbb 0xbbbb_bbbb)
    (v128.const i32x4 0x123_4567 0x89ab_cdef 0xfedc_ba98 0x7654_3210)
  )
  (v128.const i32x4 0xbaba_baba 0xbaba_baba 0xabab_abab 0xabab_abab)
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x123_4567 0x89ab_cdef 0xfedc_ba98 0x7654_3210)
  )
  (v128.const i32x4 0x5476_1032 0xdcfe_98ba 0xab89_efcd 0x2301_6745)
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555_5555 0xaaaa_aaaa 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0x5555_5555 0xaaaa_aaaa)
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (v128.const i32x4 0xb669_fd2e 0xb669_fd2e 0xb669_fd2e 0xb669_fd2e)
    (v128.const i32x4 0xcdef_cdef 0xcdef_cdef 0xcdef_cdef 0xcdef_cdef)
  )
  (v128.const i32x4 0x7b86_30c2 0x7b86_30c2 0x7b86_30c2 0x7b86_30c2)
)
(assert_return
  (invoke "bitselect"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0xcdef_cdef 0xcdef_cdef 0xcdef_cdef 0xcdef_cdef)
  )
  (v128.const i32x4 0x1024_4468 0x1024_4468 0x1024_4468 0x1024_4468)
)
