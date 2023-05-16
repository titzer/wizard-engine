(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\85\80\80\80\00\04\00\00\00\00"
  "\07\ef\80\80\80\00\04\18\69\36\34\78\32\2e\65\78"
  "\74\6d\75\6c\5f\6c\6f\77\5f\69\33\32\78\34\5f\73"
  "\00\00\19\69\36\34\78\32\2e\65\78\74\6d\75\6c\5f"
  "\68\69\67\68\5f\69\33\32\78\34\5f\73\00\01\18\69"
  "\36\34\78\32\2e\65\78\74\6d\75\6c\5f\6c\6f\77\5f"
  "\69\33\32\78\34\5f\75\00\02\19\69\36\34\78\32\2e"
  "\65\78\74\6d\75\6c\5f\68\69\67\68\5f\69\33\32\78"
  "\34\5f\75\00\03\0a\b9\80\80\80\00\04\89\80\80\80"
  "\00\00\20\00\20\01\fd\dc\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\dd\01\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\de\01\0b\89\80\80\80\00\00\20\00\20\01"
  "\fd\df\01\0b"
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x1000_0000_4000_0000 0x1000_0000_4000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x3fff_ffff_0000_0001 0x3fff_ffff_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x4000_0000_0000_0000 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x3fff_ffff_8000_0000 0x3fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_8000_0001 0xffff_ffff_8000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x1000_0000_4000_0000 0x1000_0000_4000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x3fff_ffff_0000_0001 0x3fff_ffff_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x4000_0000_0000_0000 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x3fff_ffff_8000_0000 0x3fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_8000_0001 0xffff_ffff_8000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x9000_0000_c000_0000 0x9000_0000_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x9000_0000_0000_0000 0x9000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x8fff_ffff_4000_0000 0x8fff_ffff_4000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0001_7fff_fffe 0x8000_0001_7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_7fff_ffff 0x8000_0000_7fff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_8000_0000 0x7fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x3fff_ffff_0000_0001 0x3fff_ffff_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x4000_0000_0000_0000 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x4000_0000_8000_0000 0x4000_0000_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe_8000_0001 0x7fff_fffe_8000_0001)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_8000_0000 0x7fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff 0x3fff_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0xfff_ffff_c000_0000 0xfff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i64x2 0x1000_0000_0000_0000 0x1000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xc000_0001 0xc000_0001 0xc000_0001 0xc000_0001)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x9000_0000_c000_0000 0x9000_0000_c000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x9000_0000_0000_0000 0x9000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff 0xbfff_ffff)
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i64x2 0x8fff_ffff_4000_0000 0x8fff_ffff_4000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd 0x7fff_fffd)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffd 0x7fff_fffd)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe 0x7fff_fffe)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0002 0x8000_0002 0x8000_0002 0x8000_0002)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0001_7fff_fffe 0x8000_0001_7fff_fffe)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000_7fff_ffff 0x8000_0000_7fff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_8000_0000 0x7fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x3fff_ffff_0000_0001 0x3fff_ffff_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x4000_0000_0000_0000 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x4000_0000_8000_0000 0x4000_0000_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe_8000_0001 0x7fff_fffe_8000_0001)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff_8000_0000 0x7fff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extmul_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_fffe_0000_0001 0xffff_fffe_0000_0001)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\dc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\dd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\de\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\df\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\dc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\dc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\dd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\dd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\de\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\de\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\df\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\df\01\0b"
  )
  "type mismatch"
)
