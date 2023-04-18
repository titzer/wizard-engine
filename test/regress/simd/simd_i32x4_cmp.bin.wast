(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\8b\80\80\80\00\0a\00\00\00\00"
  "\00\00\00\00\00\00\07\c3\80\80\80\00\0a\02\65\71"
  "\00\00\02\6e\65\00\01\04\6c\74\5f\73\00\02\04\6c"
  "\74\5f\75\00\03\04\6c\65\5f\73\00\04\04\6c\65\5f"
  "\75\00\05\04\67\74\5f\73\00\06\04\67\74\5f\75\00"
  "\07\04\67\65\5f\73\00\08\04\67\65\5f\75\00\09\0a"
  "\83\81\80\80\00\0a\88\80\80\80\00\00\20\00\20\01"
  "\fd\37\0b\88\80\80\80\00\00\20\00\20\01\fd\38\0b"
  "\88\80\80\80\00\00\20\00\20\01\fd\39\0b\88\80\80"
  "\80\00\00\20\00\20\01\fd\3a\0b\88\80\80\80\00\00"
  "\20\00\20\01\fd\3d\0b\88\80\80\80\00\00\20\00\20"
  "\01\fd\3e\0b\88\80\80\80\00\00\20\00\20\01\fd\3b"
  "\0b\88\80\80\80\00\00\20\00\20\01\fd\3c\0b\88\80"
  "\80\80\00\00\20\00\20\01\fd\3f\0b\88\80\80\80\00"
  "\00\20\00\20\01\fd\40\0b"
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0x0 0x1 0xffff)
    (v128.const i32x4 0xffff_ffff 0x0 0x1 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x90ab_cdf0 0x90ab_cdf0 0x90ab_cdf0 0x90ab_cdf0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "lt_u"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x90ab_cdf0 0x90ab_cdf0 0x90ab_cdf0 0x90ab_cdf0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "le_u"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff 0x0 0x1 0x8000)
    (v128.const i32x4 0xffff_ffff 0x0 0x1_0001 0x8000_8000)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xff80_ff80 0x0 0x1_0001 0xff_00ff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "gt_u"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff 0x0 0x1 0x8000)
    (v128.const i32x4 0xffff_ffff 0x0 0x1_0001 0x8000_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
    (v128.const i32x4 0x302_0100 0x1110_0904 0x1a0b_0a12 0xffab_aa1b)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0001 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
    (v128.const i32x4 0xc300_0000 0xc2fe_0000 0xbf80_0000 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
    (v128.const i32x4 0x3f80_0000 0x42fe_0000 0x4300_0000 0x437f_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x203_0001 0x1011_0409 0xb1a_120a 0xabff_1baa)
    (v128.const i32x4 0xaa1b_ffab 0xa12_1a0b 0x904_1110 0x100_0302)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8001_8000 0x8003_8002 0x8005_8004 0x8007_8006)
    (v128.const i32x4 0x8007_8006 0x8005_8004 0x8003_8002 0x8001_8000)
  )
  (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0001 0xffff_ffff 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xff80_ff80 0x0 0x1 0xffff_ffff)
    (v128.const i32x4 0x8080_8080 0x0 0x101_0101 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
    (v128.const i32x4 0x8382_8180 0xff_fefd 0x7f02_0100 0xfffe_fd80)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xffff_ff80 0x0 0x1 0xff)
    (v128.const i32x4 0xffff_ffff 0x0 0x1_0001 0x8000_8000)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
    (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "ge_u"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\37\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\40\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\39\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\3a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\38\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\8e\80\80\80\00\0d\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\05\83\80\80\80\00\01\00\01\07"
  "\b8\81\80\80\00\0d\0b\65\71\2d\69\6e\2d\62\6c\6f"
  "\63\6b\00\00\0b\6e\65\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\01\0d\6c\74\5f\73\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\02\0d\6c\65\5f\75\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\03\0d\67\74\5f\75\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\04\0d\67\65\5f\73\2d\69\6e\2d\62\6c\6f\63\6b"
  "\00\05\09\6e\65\73\74\65\64\2d\65\71\00\06\09\6e"
  "\65\73\74\65\64\2d\6e\65\00\07\0b\6e\65\73\74\65"
  "\64\2d\6c\74\5f\73\00\08\0b\6e\65\73\74\65\64\2d"
  "\6c\65\5f\75\00\09\0b\6e\65\73\74\65\64\2d\67\74"
  "\5f\75\00\0a\0b\6e\65\73\74\65\64\2d\67\65\5f\73"
  "\00\0b\08\61\73\2d\70\61\72\61\6d\00\0c\0a\b7\85"
  "\80\80\00\0d\9d\80\80\80\00\00\02\40\02\7b\02\7b"
  "\41\00\fd\00\04\00\0b\02\7b\41\01\fd\00\04\00\0b"
  "\fd\37\0b\1a\0b\0b\9d\80\80\80\00\00\02\40\02\7b"
  "\02\7b\41\00\fd\00\04\00\0b\02\7b\41\01\fd\00\04"
  "\00\0b\fd\38\0b\1a\0b\0b\9d\80\80\80\00\00\02\40"
  "\02\7b\02\7b\41\00\fd\00\04\00\0b\02\7b\41\01\fd"
  "\00\04\00\0b\fd\39\0b\1a\0b\0b\9d\80\80\80\00\00"
  "\02\40\02\7b\02\7b\41\00\fd\00\04\00\0b\02\7b\41"
  "\01\fd\00\04\00\0b\fd\3e\0b\1a\0b\0b\9d\80\80\80"
  "\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00\0b\02"
  "\7b\41\01\fd\00\04\00\0b\fd\3c\0b\1a\0b\0b\9d\80"
  "\80\80\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00"
  "\0b\02\7b\41\01\fd\00\04\00\0b\fd\3f\0b\1a\0b\0b"
  "\c1\80\80\80\00\00\41\00\fd\00\04\00\41\01\fd\00"
  "\04\00\fd\37\41\02\fd\00\04\00\41\03\fd\00\04\00"
  "\fd\37\fd\37\41\00\fd\00\04\00\41\01\fd\00\04\00"
  "\fd\37\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\37"
  "\fd\37\fd\37\1a\0b\c1\80\80\80\00\00\41\00\fd\00"
  "\04\00\41\01\fd\00\04\00\fd\38\41\02\fd\00\04\00"
  "\41\03\fd\00\04\00\fd\38\fd\38\41\00\fd\00\04\00"
  "\41\01\fd\00\04\00\fd\38\41\02\fd\00\04\00\41\03"
  "\fd\00\04\00\fd\38\fd\38\fd\38\1a\0b\c1\80\80\80"
  "\00\00\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\39"
  "\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\39\fd\39"
  "\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\39\41\02"
  "\fd\00\04\00\41\03\fd\00\04\00\fd\39\fd\39\fd\39"
  "\1a\0b\c1\80\80\80\00\00\41\00\fd\00\04\00\41\01"
  "\fd\00\04\00\fd\3e\41\02\fd\00\04\00\41\03\fd\00"
  "\04\00\fd\3e\fd\3e\41\00\fd\00\04\00\41\01\fd\00"
  "\04\00\fd\3e\41\02\fd\00\04\00\41\03\fd\00\04\00"
  "\fd\3e\fd\3e\fd\3e\1a\0b\c1\80\80\80\00\00\41\00"
  "\fd\00\04\00\41\01\fd\00\04\00\fd\3c\41\02\fd\00"
  "\04\00\41\03\fd\00\04\00\fd\3c\fd\3c\41\00\fd\00"
  "\04\00\41\01\fd\00\04\00\fd\3c\41\02\fd\00\04\00"
  "\41\03\fd\00\04\00\fd\3c\fd\3c\fd\3c\1a\0b\c1\80"
  "\80\80\00\00\41\00\fd\00\04\00\41\01\fd\00\04\00"
  "\fd\3f\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\3f"
  "\fd\3f\41\00\fd\00\04\00\41\01\fd\00\04\00\fd\3f"
  "\41\02\fd\00\04\00\41\03\fd\00\04\00\fd\3f\fd\3f"
  "\fd\3f\1a\0b\c1\80\80\80\00\00\41\00\fd\00\04\00"
  "\41\01\fd\00\04\00\fd\39\41\02\fd\00\04\00\41\03"
  "\fd\00\04\00\fd\3e\fd\37\41\00\fd\00\04\00\41\01"
  "\fd\00\04\00\fd\3b\41\02\fd\00\04\00\41\03\fd\00"
  "\04\00\fd\3a\fd\38\fd\40\1a\0b"
)
(assert_return (invoke "eq-in-block"))
(assert_return (invoke "ne-in-block"))
(assert_return (invoke "lt_s-in-block"))
(assert_return (invoke "le_u-in-block"))
(assert_return (invoke "gt_u-in-block"))
(assert_return (invoke "ge_s-in-block"))
(assert_return (invoke "nested-eq"))
(assert_return (invoke "nested-ne"))
(assert_return (invoke "nested-lt_s"))
(assert_return (invoke "nested-le_u"))
(assert_return (invoke "nested-gt_u"))
(assert_return (invoke "nested-ge_s"))
(assert_return (invoke "as-param"))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\37\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\37\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\38\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\38\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\39\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\39\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\3f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\3f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\40\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\40\0b"
  )
  "type mismatch"
)
