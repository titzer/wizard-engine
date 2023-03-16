(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\82\80\80\80\00\01\00\07\87\80\80"
  "\80\00\01\03\6e\6f\74\00\00\0a\8c\80\80\80\00\01"
  "\86\80\80\80\00\00\20\00\fd\4d\0b"
)
(assert_return
  (invoke "not" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "not"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "not" (v128.const i32x4 0xffff_ffff 0x0 0xffff_ffff 0x0))
  (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff)
)
(assert_return
  (invoke "not" (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff))
  (v128.const i32x4 0xffff_ffff 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "not"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
)
(assert_return
  (invoke "not"
    (v128.const i32x4 0xcccc_cccc 0xcccc_cccc 0xcccc_cccc 0xcccc_cccc)
  )
  (v128.const i32x4 0x3333_3333 0x3333_3333 0x3333_3333 0x3333_3333)
)
(assert_return
  (invoke "not"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i32x4 0xb669_fd2d 0xb669_fd2d 0xb669_fd2d 0xb669_fd2d)
)
(assert_return
  (invoke "not"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0xedcb_a987 0xedcb_a987 0xedcb_a987 0xedcb_a987)
)
