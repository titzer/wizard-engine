(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\87\80\80\80\00\06\00\00\00\00"
  "\00\00\07\a7\80\80\80\00\06\02\65\71\00\00\02\6e"
  "\65\00\01\04\6c\74\5f\73\00\02\04\6c\65\5f\73\00"
  "\03\04\67\74\5f\73\00\04\04\67\65\5f\73\00\05\0a"
  "\d5\80\80\80\00\06\89\80\80\80\00\00\20\00\20\01"
  "\fd\d6\01\0b\89\80\80\80\00\00\20\00\20\01\fd\d7"
  "\01\0b\89\80\80\80\00\00\20\00\20\01\fd\d8\01\0b"
  "\89\80\80\80\00\00\20\00\20\01\fd\da\01\0b\89\80"
  "\80\80\00\00\20\00\20\01\fd\d9\01\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\db\01\0b"
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x302_0100 0x0 0x1110_0904 0x0)
    (v128.const i32x4 0x302_0100 0x0 0x1110_0904 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xfff_ffff 0xffff_ffff 0xfff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "eq"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x2 0x0 0x2 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ne"
    (v128.const i32x4 0x302_0100 0x0 0x1110_0904 0x0)
    (v128.const i32x4 0x302_0100 0x0 0x1110_0904 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "lt_s"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0x0)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "le_s"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "gt_s"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
    (v128.const i32x4 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0 0xf0f0_f0f0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
    (v128.const i32x4 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f 0xf0f_0f0f)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
    (v128.const i32x4 0x1110_0904 0x302_0100 0xffab_aa1b 0x1a0b_0a12)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
    (v128.const i32x4 0xff_fefd 0x8382_8180 0xfffe_fd80 0x7f02_0100)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
    (v128.const i32x4 0x0 0xc060_0000 0x0 0xc05f_c000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "ge_s"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x405f_c000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\d6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\d7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\db\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\d9\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\da\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\d8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\d6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\d6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\d7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\d7\01\0b"
  )
  "type mismatch"
)
