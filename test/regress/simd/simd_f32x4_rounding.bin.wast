(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\85\80\80\80\00\04\00\00\00\00\07"
  "\ba\80\80\80\00\04\0a\66\33\32\78\34\2e\63\65\69"
  "\6c\00\00\0b\66\33\32\78\34\2e\66\6c\6f\6f\72\00"
  "\01\0b\66\33\32\78\34\2e\74\72\75\6e\63\00\02\0d"
  "\66\33\32\78\34\2e\6e\65\61\72\65\73\74\00\03\0a"
  "\ad\80\80\80\00\04\86\80\80\80\00\00\20\00\fd\67"
  "\0b\86\80\80\80\00\00\20\00\fd\68\0b\86\80\80\80"
  "\00\00\20\00\fd\69\0b\86\80\80\80\00\00\20\00\fd"
  "\6a\0b"
)
(assert_return
  (invoke "f32x4.ceil" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.ceil" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.cp+2 0x1.cp+2 0x1.cp+2 0x1.cp+2)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.ceil"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.floor" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.floor" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.8p+2 0x1.8p+2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.cp+2 -0x1.cp+2 -0x1.cp+2 -0x1.cp+2)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.floor"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.trunc" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.8p+2 0x1.8p+2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.trunc"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.nearest" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.8p+2 0x1.8p+2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4 0x5b91_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4 0x6511_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4 0x5211_a2b4)
  )
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.nearest"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\67\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\68\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\69\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\6a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\67\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\68\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\69\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\6a\0b"
  )
  "type mismatch"
)
