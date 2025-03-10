(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\01\7b\60\01\7b\00\03\83\80\80\80\00\02\00\01"
  "\06\96\80\80\80\00\01\7b\01\fd\0c\ff\ff\ff\ff\ff"
  "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\0b\07\8d\80\80"
  "\80\00\02\03\67\65\74\00\00\03\73\65\74\00\01\0a"
  "\95\80\80\80\00\02\84\80\80\80\00\00\23\00\0b\86"
  "\80\80\80\00\00\20\00\24\00\0b"
)
(assert_return
  (invoke "get")
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "set"
    (v128.const i32x4 0xfefe_fefe 0xfefe_fefe 0xfefe_fefe 0xfefe_fefe)
  )
)
(assert_return
  (invoke "get")
  (v128.const i8x16
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
    0xfe
  )
)
(assert_return
  (invoke "set"
    (v128.const i32x4 0xdece_beae 0x1e0e_feee 0x5e4e_3e2e 0x9e8e_7e6e)
  )
)
(assert_return
  (invoke "get")
  (v128.const i8x16
    0xae
    0xbe
    0xce
    0xde
    0xee
    0xfe
    0xe
    0x1e
    0x2e
    0x3e
    0x4e
    0x5e
    0x6e
    0x7e
    0x8e
    0x9e
  )
)
(assert_return
  (invoke "set" (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15))
)
(assert_return
  (invoke "get")
  (v128.const i32x4 0x75b_cd15 0x75b_cd15 0x75b_cd15 0x75b_cd15)
)
(assert_return
  (invoke "set" (v128.const i32x4 0xb 0xffff_ffea 0x21 0xffff_ffd4))
)
(assert_return
  (invoke "get")
  (v128.const i32x4 0xb 0xffff_ffea 0x21 0xffff_ffd4)
)
