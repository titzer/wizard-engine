(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\85\80\80\80\00\04\00\00\00\00"
  "\07\ef\80\80\80\00\04\18\69\33\32\78\34\2e\65\78"
  "\74\6d\75\6c\5f\6c\6f\77\5f\69\31\36\78\38\5f\73"
  "\00\00\19\69\33\32\78\34\2e\65\78\74\6d\75\6c\5f"
  "\68\69\67\68\5f\69\31\36\78\38\5f\73\00\01\18\69"
  "\33\32\78\34\2e\65\78\74\6d\75\6c\5f\6c\6f\77\5f"
  "\69\31\36\78\38\5f\75\00\02\19\69\33\32\78\34\2e"
  "\65\78\74\6d\75\6c\5f\68\69\67\68\5f\69\31\36\78"
  "\38\5f\75\00\03\0a\b9\80\80\80\00\04\89\80\80\80"
  "\00\00\20\00\20\01\fd\bc\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\bd\01\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\be\01\0b\89\80\80\80\00\00\20\00\20\01"
  "\fd\bf\01\0b"
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xc001_c001 0xc001_c001 0xc001_c001 0xc001_c001)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x1000_4000 0x1000_4000 0x1000_4000 0x1000_4000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffd 0x7ffd 0x7ffd 0x7ffd)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8002_8002 0x8002_8002 0x8002_8002 0x8002_8002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x3fff_0001 0x3fff_0001 0x3fff_0001 0x3fff_0001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x3fff_8000 0x3fff_8000 0x3fff_8000 0x3fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xc001_c001 0xc001_c001 0xc001_c001 0xc001_c001)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x1000_4000 0x1000_4000 0x1000_4000 0x1000_4000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffd 0x7ffd 0x7ffd 0x7ffd)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8002_8002 0x8002_8002 0x8002_8002 0x8002_8002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x3fff_0001 0x3fff_0001 0x3fff_0001 0x3fff_0001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x3fff_8000 0x3fff_8000 0x3fff_8000 0x3fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xc001_c001 0xc001_c001 0xc001_c001 0xc001_c001)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x9000_c000 0x9000_c000 0x9000_c000 0x9000_c000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x9000_0000 0x9000_0000 0x9000_0000 0x9000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x8fff_4000 0x8fff_4000 0x8fff_4000 0x8fff_4000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffd 0x7ffd 0x7ffd 0x7ffd)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8002_8002 0x8002_8002 0x8002_8002 0x8002_8002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8001_7ffe 0x8001_7ffe 0x8001_7ffe 0x8001_7ffe)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_7fff 0x8000_7fff 0x8000_7fff 0x8000_7fff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_8000 0x7fff_8000 0x7fff_8000 0x7fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x3fff_0001 0x3fff_0001 0x3fff_0001 0x3fff_0001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x4000_8000 0x4000_8000 0x4000_8000 0x4000_8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7ffe_8001 0x7ffe_8001 0x7ffe_8001 0x7ffe_8001)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x7fff_8000 0x7fff_8000 0x7fff_8000 0x7fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff 0x3fff_3fff)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0xfff_c000 0xfff_c000 0xfff_c000 0xfff_c000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
    (v128.const i32x4 0x4000_4000 0x4000_4000 0x4000_4000 0x4000_4000)
  )
  (v128.const i32x4 0x1000_0000 0x1000_0000 0x1000_0000 0x1000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xc001_c001 0xc001_c001 0xc001_c001 0xc001_c001)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x9000_c000 0x9000_c000 0x9000_c000 0x9000_c000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x9000_0000 0x9000_0000 0x9000_0000 0x9000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff 0xbfff_bfff)
    (v128.const i32x4 0xc000_c000 0xc000_c000 0xc000_c000 0xc000_c000)
  )
  (v128.const i32x4 0x8fff_4000 0x8fff_4000 0x8fff_4000 0x8fff_4000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd 0x7ffd_7ffd)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffd 0x7ffd 0x7ffd 0x7ffd)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8002_8002 0x8002_8002 0x8002_8002 0x8002_8002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8001_7ffe 0x8001_7ffe 0x8001_7ffe 0x8001_7ffe)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000_7fff 0x8000_7fff 0x8000_7fff 0x8000_7fff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff_8000 0x7fff_8000 0x7fff_8000 0x7fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x3fff_0001 0x3fff_0001 0x3fff_0001 0x3fff_0001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x4000_8000 0x4000_8000 0x4000_8000 0x4000_8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7ffe_8001 0x7ffe_8001 0x7ffe_8001 0x7ffe_8001)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x7fff_8000 0x7fff_8000 0x7fff_8000 0x7fff_8000)
)
(assert_return
  (invoke "i32x4.extmul_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xfffe_0001 0xfffe_0001 0xfffe_0001 0xfffe_0001)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\bc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\bd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\be\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\bf\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\bc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\bc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\bd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\bd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\be\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\be\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\bf\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\bf\01\0b"
  )
  "type mismatch"
)
