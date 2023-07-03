(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7b\7f\01\7b\60\01\7b\01\7b\03\99\80\80\80\00"
  "\18\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01"
  "\01\01\01\01\01\01\01\01\01\07\df\82\80\80\00\18"
  "\09\69\38\78\31\36\2e\73\68\6c\00\00\0b\69\38\78"
  "\31\36\2e\73\68\72\5f\73\00\01\0b\69\38\78\31\36"
  "\2e\73\68\72\5f\75\00\02\09\69\31\36\78\38\2e\73"
  "\68\6c\00\03\0b\69\31\36\78\38\2e\73\68\72\5f\73"
  "\00\04\0b\69\31\36\78\38\2e\73\68\72\5f\75\00\05"
  "\09\69\33\32\78\34\2e\73\68\6c\00\06\0b\69\33\32"
  "\78\34\2e\73\68\72\5f\73\00\07\0b\69\33\32\78\34"
  "\2e\73\68\72\5f\75\00\08\09\69\36\34\78\32\2e\73"
  "\68\6c\00\09\0b\69\36\34\78\32\2e\73\68\72\5f\73"
  "\00\0a\0b\69\36\34\78\32\2e\73\68\72\5f\75\00\0b"
  "\0b\69\38\78\31\36\2e\73\68\6c\5f\31\00\0c\0d\69"
  "\38\78\31\36\2e\73\68\72\5f\75\5f\38\00\0d\0d\69"
  "\38\78\31\36\2e\73\68\72\5f\73\5f\39\00\0e\0b\69"
  "\31\36\78\38\2e\73\68\6c\5f\31\00\0f\0e\69\31\36"
  "\78\38\2e\73\68\72\5f\75\5f\31\36\00\10\0e\69\31"
  "\36\78\38\2e\73\68\72\5f\73\5f\31\37\00\11\0b\69"
  "\33\32\78\34\2e\73\68\6c\5f\31\00\12\0e\69\33\32"
  "\78\34\2e\73\68\72\5f\75\5f\33\32\00\13\0e\69\33"
  "\32\78\34\2e\73\68\72\5f\73\5f\33\33\00\14\0b\69"
  "\36\34\78\32\2e\73\68\6c\5f\31\00\15\0e\69\36\34"
  "\78\32\2e\73\68\72\5f\75\5f\36\34\00\16\0e\69\36"
  "\34\78\32\2e\73\68\72\5f\73\5f\36\35\00\17\0a\cd"
  "\82\80\80\00\18\88\80\80\80\00\00\20\00\20\01\fd"
  "\6b\0b\88\80\80\80\00\00\20\00\20\01\fd\6c\0b\88"
  "\80\80\80\00\00\20\00\20\01\fd\6d\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\8b\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\8c\01\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\8d\01\0b\89\80\80\80\00\00\20\00\20\01"
  "\fd\ab\01\0b\89\80\80\80\00\00\20\00\20\01\fd\ac"
  "\01\0b\89\80\80\80\00\00\20\00\20\01\fd\ad\01\0b"
  "\89\80\80\80\00\00\20\00\20\01\fd\cb\01\0b\89\80"
  "\80\80\00\00\20\00\20\01\fd\cc\01\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\cd\01\0b\88\80\80\80\00\00"
  "\20\00\41\01\fd\6b\0b\88\80\80\80\00\00\20\00\41"
  "\08\fd\6d\0b\88\80\80\80\00\00\20\00\41\09\fd\6c"
  "\0b\89\80\80\80\00\00\20\00\41\01\fd\8b\01\0b\89"
  "\80\80\80\00\00\20\00\41\10\fd\8d\01\0b\89\80\80"
  "\80\00\00\20\00\41\11\fd\8c\01\0b\89\80\80\80\00"
  "\00\20\00\41\01\fd\ab\01\0b\89\80\80\80\00\00\20"
  "\00\41\20\fd\ad\01\0b\89\80\80\80\00\00\20\00\41"
  "\21\fd\ac\01\0b\89\80\80\80\00\00\20\00\41\01\fd"
  "\cb\01\0b\8a\80\80\80\00\00\20\00\41\c0\00\fd\cd"
  "\01\0b\8a\80\80\80\00\00\20\00\41\c1\00\fd\cc\01"
  "\0b"
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x1)
  )
  (v128.const i8x16
    0x0
    0x80
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0xddcc_bbaa 0xb0a0_ffee 0xf0e0_d0c0 0xd0c_0b0a)
    (i32.const 0x4)
  )
  (v128.const i8x16
    0xa0
    0xb0
    0xc0
    0xd0
    0xe0
    0xf0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xa0
    0xb0
    0xc0
    0xd0
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x8)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x20)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x80)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x100)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x80
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x11)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x21)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x81)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x101)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x201)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x202)
  )
  (v128.const i8x16
    0x0
    0x4
    0x8
    0xc
    0x10
    0x14
    0x18
    0x1c
    0x20
    0x24
    0x28
    0x2c
    0x30
    0x34
    0x38
    0x3c
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x1)
  )
  (v128.const i8x16
    0x40
    0x60
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0xddcc_bbaa 0xb0a0_ffee 0xf0e0_d0c0 0xd0c_0b0a)
    (i32.const 0x4)
  )
  (v128.const i8x16
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x8)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x20)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x80)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x100)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x40
    0x60
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x11)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x21)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x81)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x101)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x201)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_u"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x202)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x1
    0x1
    0x1
    0x1
    0x2
    0x2
    0x2
    0x2
    0x3
    0x3
    0x3
    0x3
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x1)
  )
  (v128.const i8x16
    0xc0
    0xe0
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0xddcc_bbaa 0xb0a0_ffee 0xf0e0_d0c0 0xd0c_0b0a)
    (i32.const 0x4)
  )
  (v128.const i8x16
    0xfa
    0xfb
    0xfc
    0xfd
    0xfe
    0xff
    0xfa
    0xfb
    0xfc
    0xfd
    0xfe
    0xff
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x8)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x20)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x80)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x100)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0xc0
    0xe0
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x11)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x21)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x81)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x101)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x201)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i8x16.shr_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x202)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x1
    0x1
    0x1
    0x1
    0x2
    0x2
    0x2
    0x2
    0x3
    0x3
    0x3
    0x3
  )
)
(assert_return
  (invoke "i8x16.shl_1"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shr_u_8"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "i8x16.shr_s_9"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i8x16
    0x0
    0x0
    0x1
    0x1
    0x2
    0x2
    0x3
    0x3
    0x4
    0x4
    0x5
    0x5
    0x6
    0x6
    0x7
    0x7
  )
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x1)
  )
  (v128.const i16x8 0xff00 0xff80 0x0 0x2 0x4 0x6 0x8 0xa)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
    (i32.const 0x2)
  )
  (v128.const i16x8 0xc0e4 0xc0e4 0xc0e4 0xc0e4 0xc0e4 0xc0e4 0xc0e4 0xc0e4)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
    (i32.const 0x2)
  )
  (v128.const i16x8 0x48d0 0x48d0 0x48d0 0x48d0 0x48d0 0x48d0 0x48d0 0x48d0)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0xccdd_aabb 0xa0b0_eeff 0xe0f0_c0d0 0xc0d_0a0b)
    (i32.const 0x4)
  )
  (v128.const i16x8 0xabb0 0xcdd0 0xeff0 0xb00 0xd00 0xf00 0xa0b0 0xc0d0)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x8)
  )
  (v128.const i16x8 0x0 0x100 0x200 0x300 0x400 0x500 0x600 0x700)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x20)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x80)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x100)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x11)
  )
  (v128.const i16x8 0xff00 0xff80 0x0 0x2 0x4 0x6 0x8 0xa)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x11)
  )
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x21)
  )
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x81)
  )
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x101)
  )
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x201)
  )
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shl"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x202)
  )
  (v128.const i16x8 0x0 0x4 0x8 0xc 0x10 0x14 0x18 0x1c)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x1)
  )
  (v128.const i16x8 0x7fc0 0x7fe0 0x0 0x0 0x1 0x1 0x2 0x2)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
    (i32.const 0x2)
  )
  (v128.const i16x8 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab)
    (i32.const 0x2)
  )
  (v128.const i16x8 0x242a 0x242a 0x242a 0x242a 0x242a 0x242a 0x242a 0x242a)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0xccdd_aabb 0xa0b0_eeff 0xe0f0_c0d0 0xc0d_0a0b)
    (i32.const 0x4)
  )
  (v128.const i16x8 0xaab 0xccd 0xeef 0xa0b 0xc0d 0xe0f 0xa0 0xc0)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x8)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x20)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x80)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x100)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x11)
  )
  (v128.const i16x8 0x7fc0 0x7fe0 0x0 0x0 0x1 0x1 0x2 0x2)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x11)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x21)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x81)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x101)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x201)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_u"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x202)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x1)
  )
  (v128.const i16x8 0xffc0 0xffe0 0x0 0x0 0x1 0x1 0x2 0x2)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
    (i32.const 0x2)
  )
  (v128.const i16x8 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e 0xc0e)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab 0x90ab_90ab)
    (i32.const 0x2)
  )
  (v128.const i16x8 0xe42a 0xe42a 0xe42a 0xe42a 0xe42a 0xe42a 0xe42a 0xe42a)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0xccdd_aabb 0xa0b0_eeff 0xe0f0_c0d0 0xc0d_0a0b)
    (i32.const 0x4)
  )
  (v128.const i16x8 0xfaab 0xfccd 0xfeef 0xfa0b 0xfc0d 0xfe0f 0xa0 0xc0)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x8)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x20)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x80)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x100)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0xffc0_ff80 0x1_0000 0x3_0002 0x5_0004)
    (i32.const 0x11)
  )
  (v128.const i16x8 0xffc0 0xffe0 0x0 0x0 0x1 0x1 0x2 0x2)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x11)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x21)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x81)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x101)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x201)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i16x8.shr_s"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
    (i32.const 0x202)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.shl_1" (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006))
  (v128.const i16x8 0x0 0x2 0x4 0x6 0x8 0xa 0xc 0xe)
)
(assert_return
  (invoke "i16x8.shr_u_16"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
  )
  (v128.const i16x8 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7)
)
(assert_return
  (invoke "i16x8.shr_s_17"
    (v128.const i32x4 0x1_0000 0x3_0002 0x5_0004 0x7_0006)
  )
  (v128.const i16x8 0x0 0x0 0x1 0x1 0x2 0x2 0x3 0x3)
)
(assert_return
  (invoke "i32x4.shl"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0x0 0xa0b_0c0d)
    (i32.const 0x1)
  )
  (v128.const i32x4 0x0 0xffff_0000 0x0 0x1416_181a)
)
(assert_return
  (invoke "i32x4.shl"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (i32.const 0x2)
  )
  (v128.const i32x4 0x2658_0b48 0x2658_0b48 0x2658_0b48 0x2658_0b48)
)
(assert_return
  (invoke "i32x4.shl"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (i32.const 0x2)
  )
  (v128.const i32x4 0x48d1_59e0 0x48d1_59e0 0x48d1_59e0 0x48d1_59e0)
)
(assert_return
  (invoke "i32x4.shl"
    (v128.const i32x4 0xaabb_ccdd 0xeeff_a0b0 0xc0d0_e0f0 0xa0b_0c0d)
    (i32.const 0x4)
  )
  (v128.const i32x4 0xabbc_cdd0 0xeffa_0b00 0xd0e_0f00 0xa0b0_c0d0)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x8))
  (v128.const i32x4 0x0 0x100 0xe00 0xf00)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x20))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x80))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x100))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shl"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0x0 0xa0b_0c0d)
    (i32.const 0x21)
  )
  (v128.const i32x4 0x0 0xffff_0000 0x0 0x1416_181a)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x21))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x41))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x81))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x101))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x201))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shl" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x202))
  (v128.const i32x4 0x0 0x4 0x38 0x3c)
)
(assert_return
  (invoke "i32x4.shr_u"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0xc 0xd)
    (i32.const 0x1)
  )
  (v128.const i32x4 0x4000_0000 0x7fff_c000 0x6 0x6)
)
(assert_return
  (invoke "i32x4.shr_u"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (i32.const 0x2)
  )
  (v128.const i32x4 0x1265_80b4 0x1265_80b4 0x1265_80b4 0x1265_80b4)
)
(assert_return
  (invoke "i32x4.shr_u"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (i32.const 0x2)
  )
  (v128.const i32x4 0x242a_f37b 0x242a_f37b 0x242a_f37b 0x242a_f37b)
)
(assert_return
  (invoke "i32x4.shr_u"
    (v128.const i32x4 0xaabb_ccdd 0xeeff_a0b0 0xc0d0_e0f0 0xa0b_0c0d)
    (i32.const 0x4)
  )
  (v128.const i32x4 0xaab_bccd 0xeef_fa0b 0xc0d_0e0f 0xa0_b0c0)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x8))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x20))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x80))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x100))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_u"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0xc 0xd)
    (i32.const 0x21)
  )
  (v128.const i32x4 0x4000_0000 0x7fff_c000 0x6 0x6)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x21))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x41))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x81))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x101))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x201))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_u" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x202))
  (v128.const i32x4 0x0 0x0 0x3 0x3)
)
(assert_return
  (invoke "i32x4.shr_s"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0xc 0xd)
    (i32.const 0x1)
  )
  (v128.const i32x4 0xc000_0000 0xffff_c000 0x6 0x6)
)
(assert_return
  (invoke "i32x4.shr_s"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (i32.const 0x2)
  )
  (v128.const i32x4 0x1265_80b4 0x1265_80b4 0x1265_80b4 0x1265_80b4)
)
(assert_return
  (invoke "i32x4.shr_s"
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
    (i32.const 0x2)
  )
  (v128.const i32x4 0xe42a_f37b 0xe42a_f37b 0xe42a_f37b 0xe42a_f37b)
)
(assert_return
  (invoke "i32x4.shr_s"
    (v128.const i32x4 0xaabb_ccdd 0xeeff_a0b0 0xc0d0_e0f0 0xa0b_0c0d)
    (i32.const 0x4)
  )
  (v128.const i32x4 0xfaab_bccd 0xfeef_fa0b 0xfc0d_0e0f 0xa0_b0c0)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x8))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x20))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x80))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x100))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_s"
    (v128.const i32x4 0x8000_0000 0xffff_8000 0xc 0xd)
    (i32.const 0x21)
  )
  (v128.const i32x4 0xc000_0000 0xffff_c000 0x6 0x6)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x21))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x41))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x81))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x101))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x201))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i32x4.shr_s" (v128.const i32x4 0x0 0x1 0xe 0xf) (i32.const 0x202))
  (v128.const i32x4 0x0 0x0 0x3 0x3)
)
(assert_return
  (invoke "i32x4.shl_1" (v128.const i32x4 0x0 0x1 0xe 0xf))
  (v128.const i32x4 0x0 0x2 0x1c 0x1e)
)
(assert_return
  (invoke "i32x4.shr_u_32" (v128.const i32x4 0x0 0x1 0xe 0xf))
  (v128.const i32x4 0x0 0x1 0xe 0xf)
)
(assert_return
  (invoke "i32x4.shr_s_33" (v128.const i32x4 0x0 0x1 0xe 0xf))
  (v128.const i32x4 0x0 0x0 0x7 0x7)
)
(assert_return
  (invoke "i64x2.shl"
    (v128.const i32x4 0x0 0x8000_0000 0x8000_0000 0xffff_ffff)
    (i32.const 0x1)
  )
  (v128.const i64x2 0x0 0xffff_ffff_0000_0000)
)
(assert_return
  (invoke "i64x2.shl"
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
    (i32.const 0x2)
  )
  (v128.const i64x2 0x4488_43d1_f7a6_0454 0x4488_43d1_f7a6_0454)
)
(assert_return
  (invoke "i64x2.shl"
    (v128.const i32x4 0x90ab_cdef 0x1234_5678 0x90ab_cdef 0x1234_5678)
    (i32.const 0x2)
  )
  (v128.const i64x2 0x48d1_59e2_42af_37bc 0x48d1_59e2_42af_37bc)
)
(assert_return
  (invoke "i64x2.shl"
    (v128.const i32x4 0xeeff_a0b0 0xaabb_ccdd 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x4)
  )
  (v128.const i64x2 0xabbc_cdde_effa_0b00 0xd0e_0f00_a0b0_c0d0)
)
(assert_return
  (invoke "i64x2.shl"
    (v128.const i32x4 0xeeff_a0b0 0xaabb_ccdd 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x8)
  )
  (v128.const i64x2 0xbbcc_ddee_ffa0_b000 0xd0e0_f00a_0b0c_0d00)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x10))
  (v128.const i64x2 0x1_0000 0xf_0000)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x20))
  (v128.const i64x2 0x1_0000_0000 0xf_0000_0000)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x80))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x100))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x41))
  (v128.const i64x2 0x2 0x1e)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x81))
  (v128.const i64x2 0x2 0x1e)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x101))
  (v128.const i64x2 0x2 0x1e)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x201))
  (v128.const i64x2 0x2 0x1e)
)
(assert_return
  (invoke "i64x2.shl" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x202))
  (v128.const i64x2 0x4 0x3c)
)
(assert_return
  (invoke "i64x2.shr_u"
    (v128.const i32x4 0x0 0x8000_0000 0x8000_0000 0xffff_ffff)
    (i32.const 0x1)
  )
  (v128.const i64x2 0x4000_0000_0000_0000 0x7fff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.shr_u"
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
    (i32.const 0x2)
  )
  (v128.const i64x2 0x448_843d_1f7a_6045 0x448_843d_1f7a_6045)
)
(assert_return
  (invoke "i64x2.shr_u"
    (v128.const i32x4 0x8765_4321 0x90ab_cdef 0x8765_4321 0x90ab_cdef)
    (i32.const 0x2)
  )
  (v128.const i64x2 0x242a_f37b_e1d9_50c8 0x242a_f37b_e1d9_50c8)
)
(assert_return
  (invoke "i64x2.shr_u"
    (v128.const i32x4 0xeeff_a0b0 0xaabb_ccdd 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x4)
  )
  (v128.const i64x2 0xaab_bccd_deef_fa0b 0xc0d_0e0f_00a0_b0c0)
)
(assert_return
  (invoke "i64x2.shr_u"
    (v128.const i32x4 0xeeff_a0b0 0xaabb_ccdd 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x8)
  )
  (v128.const i64x2 0xaa_bbcc_ddee_ffa0 0xc0_d0e0_f00a_0b0c)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x10))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x20))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x80))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x100))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x41))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x81))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x101))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x201))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_u" (v128.const i32x4 0x0 0x0 0xf 0x0) (i32.const 0x202))
  (v128.const i64x2 0x0 0x3)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0x0 0x8000_0000 0x8000_0000 0xffff_ffff)
    (i32.const 0x1)
  )
  (v128.const i64x2 0xc000_0000_0000_0000 0xffff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x7de9_8115 0x1122_10f4)
    (i32.const 0x2)
  )
  (v128.const i64x2 0x448_843d_1f7a_6045 0x448_843d_1f7a_6045)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0x8765_4321 0x90ab_cdef 0x8765_4321 0x90ab_cdef)
    (i32.const 0x2)
  )
  (v128.const i64x2 0xe42a_f37b_e1d9_50c8 0xe42a_f37b_e1d9_50c8)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0xeeff_a0b0 0xaabb_ccdd 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x4)
  )
  (v128.const i64x2 0xfaab_bccd_deef_fa0b 0xfc0d_0e0f_00a0_b0c0)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0xddee_ffa0 0xffaa_bbcc 0xa0b_0c0d 0xc0d0_e0f0)
    (i32.const 0x8)
  )
  (v128.const i64x2 0xffff_aabb_ccdd_eeff 0xffc0_d0e0_f00a_0b0c)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x10))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x20))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x80))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x100))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shr_s"
    (v128.const i32x4 0x0 0x8000_0000 0x8000_0000 0xffff_ffff)
    (i32.const 0x41)
  )
  (v128.const i64x2 0xc000_0000_0000_0000 0xffff_ffff_c000_0000)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0xc 0x0 0xd 0x0) (i32.const 0x41))
  (v128.const i64x2 0x6 0x6)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x81))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x101))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x201))
  (v128.const i64x2 0x0 0x7)
)
(assert_return
  (invoke "i64x2.shr_s" (v128.const i32x4 0x1 0x0 0xf 0x0) (i32.const 0x202))
  (v128.const i64x2 0x0 0x3)
)
(assert_return
  (invoke "i64x2.shl_1" (v128.const i32x4 0x1 0x0 0xf 0x0))
  (v128.const i64x2 0x2 0x1e)
)
(assert_return
  (invoke "i64x2.shr_u_64" (v128.const i32x4 0x1 0x0 0xf 0x0))
  (v128.const i64x2 0x1 0xf)
)
(assert_return
  (invoke "i64x2.shr_s_65" (v128.const i32x4 0x1 0x0 0xf 0x0))
  (v128.const i64x2 0x0 0x7)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\99\80\80\80\00\18\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\05\83\80\80\80\00\01\00\01\07\81\84\80\80\00"
  "\18\12\69\38\78\31\36\2e\73\68\6c\2d\69\6e\2d\62"
  "\6c\6f\63\6b\00\00\14\69\38\78\31\36\2e\73\68\72"
  "\5f\73\2d\69\6e\2d\62\6c\6f\63\6b\00\01\14\69\38"
  "\78\31\36\2e\73\68\72\5f\75\2d\69\6e\2d\62\6c\6f"
  "\63\6b\00\02\12\69\31\36\78\38\2e\73\68\6c\2d\69"
  "\6e\2d\62\6c\6f\63\6b\00\03\14\69\31\36\78\38\2e"
  "\73\68\72\5f\73\2d\69\6e\2d\62\6c\6f\63\6b\00\04"
  "\14\69\31\36\78\38\2e\73\68\72\5f\75\2d\69\6e\2d"
  "\62\6c\6f\63\6b\00\05\12\69\33\32\78\34\2e\73\68"
  "\6c\2d\69\6e\2d\62\6c\6f\63\6b\00\06\14\69\33\32"
  "\78\34\2e\73\68\72\5f\73\2d\69\6e\2d\62\6c\6f\63"
  "\6b\00\07\14\69\33\32\78\34\2e\73\68\72\5f\75\2d"
  "\69\6e\2d\62\6c\6f\63\6b\00\08\12\69\36\34\78\32"
  "\2e\73\68\6c\2d\69\6e\2d\62\6c\6f\63\6b\00\09\14"
  "\69\36\34\78\32\2e\73\68\72\5f\73\2d\69\6e\2d\62"
  "\6c\6f\63\6b\00\0a\14\69\36\34\78\32\2e\73\68\72"
  "\5f\75\2d\69\6e\2d\62\6c\6f\63\6b\00\0b\10\6e\65"
  "\73\74\65\64\2d\69\38\78\31\36\2e\73\68\6c\00\0c"
  "\12\6e\65\73\74\65\64\2d\69\38\78\31\36\2e\73\68"
  "\72\5f\73\00\0d\12\6e\65\73\74\65\64\2d\69\38\78"
  "\31\36\2e\73\68\72\5f\75\00\0e\10\6e\65\73\74\65"
  "\64\2d\69\31\36\78\38\2e\73\68\6c\00\0f\12\6e\65"
  "\73\74\65\64\2d\69\31\36\78\38\2e\73\68\72\5f\73"
  "\00\10\12\6e\65\73\74\65\64\2d\69\31\36\78\38\2e"
  "\73\68\72\5f\75\00\11\10\6e\65\73\74\65\64\2d\69"
  "\33\32\78\34\2e\73\68\6c\00\12\12\6e\65\73\74\65"
  "\64\2d\69\33\32\78\34\2e\73\68\72\5f\73\00\13\12"
  "\6e\65\73\74\65\64\2d\69\33\32\78\34\2e\73\68\72"
  "\5f\75\00\14\10\6e\65\73\74\65\64\2d\69\36\34\78"
  "\32\2e\73\68\6c\00\15\12\6e\65\73\74\65\64\2d\69"
  "\36\34\78\32\2e\73\68\72\5f\73\00\16\12\6e\65\73"
  "\74\65\64\2d\69\36\34\78\32\2e\73\68\72\5f\75\00"
  "\17\0a\a1\85\80\80\00\18\96\80\80\80\00\00\02\40"
  "\02\7b\02\7b\41\00\fd\00\04\00\0b\41\01\fd\6b\0b"
  "\1a\0b\0b\96\80\80\80\00\00\02\40\02\7b\02\7b\41"
  "\00\fd\00\04\00\0b\41\01\fd\6c\0b\1a\0b\0b\96\80"
  "\80\80\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00"
  "\0b\41\01\fd\6d\0b\1a\0b\0b\97\80\80\80\00\00\02"
  "\40\02\7b\02\7b\41\00\fd\00\04\00\0b\41\01\fd\8b"
  "\01\0b\1a\0b\0b\97\80\80\80\00\00\02\40\02\7b\02"
  "\7b\41\00\fd\00\04\00\0b\41\01\fd\8c\01\0b\1a\0b"
  "\0b\97\80\80\80\00\00\02\40\02\7b\02\7b\41\00\fd"
  "\00\04\00\0b\41\01\fd\8d\01\0b\1a\0b\0b\97\80\80"
  "\80\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00\0b"
  "\41\01\fd\ab\01\0b\1a\0b\0b\97\80\80\80\00\00\02"
  "\40\02\7b\02\7b\41\00\fd\00\04\00\0b\41\01\fd\ac"
  "\01\0b\1a\0b\0b\97\80\80\80\00\00\02\40\02\7b\02"
  "\7b\41\00\fd\00\04\00\0b\41\01\fd\ad\01\0b\1a\0b"
  "\0b\97\80\80\80\00\00\02\40\02\7b\02\7b\41\00\fd"
  "\00\04\00\0b\41\01\fd\cb\01\0b\1a\0b\0b\97\80\80"
  "\80\00\00\02\40\02\7b\02\7b\41\00\fd\00\04\00\0b"
  "\41\01\fd\cc\01\0b\1a\0b\0b\97\80\80\80\00\00\02"
  "\40\02\7b\02\7b\41\00\fd\00\04\00\0b\41\01\fd\cd"
  "\01\0b\1a\0b\0b\95\80\80\80\00\00\41\00\fd\00\04"
  "\00\41\01\fd\6b\41\01\fd\6b\41\01\fd\6b\1a\0b\95"
  "\80\80\80\00\00\41\00\fd\00\04\00\41\01\fd\6c\41"
  "\01\fd\6c\41\01\fd\6c\1a\0b\95\80\80\80\00\00\41"
  "\00\fd\00\04\00\41\01\fd\6d\41\01\fd\6d\41\01\fd"
  "\6d\1a\0b\98\80\80\80\00\00\41\00\fd\00\04\00\41"
  "\01\fd\8b\01\41\01\fd\8b\01\41\01\fd\8b\01\1a\0b"
  "\98\80\80\80\00\00\41\00\fd\00\04\00\41\01\fd\8c"
  "\01\41\01\fd\8c\01\41\01\fd\8c\01\1a\0b\98\80\80"
  "\80\00\00\41\00\fd\00\04\00\41\01\fd\8d\01\41\01"
  "\fd\8d\01\41\01\fd\8d\01\1a\0b\98\80\80\80\00\00"
  "\41\00\fd\00\04\00\41\01\fd\ab\01\41\01\fd\ab\01"
  "\41\01\fd\ab\01\1a\0b\98\80\80\80\00\00\41\00\fd"
  "\00\04\00\41\01\fd\ac\01\41\01\fd\ac\01\41\01\fd"
  "\ac\01\1a\0b\98\80\80\80\00\00\41\00\fd\00\04\00"
  "\41\01\fd\ad\01\41\01\fd\ad\01\41\01\fd\ad\01\1a"
  "\0b\98\80\80\80\00\00\41\00\fd\00\04\00\41\01\fd"
  "\cb\01\41\01\fd\cb\01\41\01\fd\cb\01\1a\0b\98\80"
  "\80\80\00\00\41\00\fd\00\04\00\41\01\fd\cc\01\41"
  "\01\fd\cc\01\41\01\fd\cc\01\1a\0b\98\80\80\80\00"
  "\00\41\00\fd\00\04\00\41\01\fd\cd\01\41\01\fd\cd"
  "\01\41\01\fd\cd\01\1a\0b"
)
(assert_return (invoke "i8x16.shl-in-block"))
(assert_return (invoke "i8x16.shr_s-in-block"))
(assert_return (invoke "i8x16.shr_u-in-block"))
(assert_return (invoke "i16x8.shl-in-block"))
(assert_return (invoke "i16x8.shr_s-in-block"))
(assert_return (invoke "i16x8.shr_u-in-block"))
(assert_return (invoke "i32x4.shl-in-block"))
(assert_return (invoke "i32x4.shr_s-in-block"))
(assert_return (invoke "i32x4.shr_u-in-block"))
(assert_return (invoke "i64x2.shl-in-block"))
(assert_return (invoke "i64x2.shr_s-in-block"))
(assert_return (invoke "i64x2.shr_u-in-block"))
(assert_return (invoke "nested-i8x16.shl"))
(assert_return (invoke "nested-i8x16.shr_s"))
(assert_return (invoke "nested-i8x16.shr_u"))
(assert_return (invoke "nested-i16x8.shl"))
(assert_return (invoke "nested-i16x8.shr_s"))
(assert_return (invoke "nested-i16x8.shr_u"))
(assert_return (invoke "nested-i32x4.shl"))
(assert_return (invoke "nested-i32x4.shr_s"))
(assert_return (invoke "nested-i32x4.shr_u"))
(assert_return (invoke "nested-i64x2.shl"))
(assert_return (invoke "nested-i64x2.shr_s"))
(assert_return (invoke "nested-i64x2.shr_u"))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\41\00\fd\6b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\41\00\fd\6c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\41\00\fd\6d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\8b\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\8c\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\8d\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\ab\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\ac\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\ad\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\cb\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\cc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\00\41\00\fd\cd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\6b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\6b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\6b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\8d\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\8d\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\8d\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\ac\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\ac\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\ac\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\cb\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\cd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\cc\01\0b"
  )
  "type mismatch"
)
