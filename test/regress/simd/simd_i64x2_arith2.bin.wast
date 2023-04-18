(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\01\7b\01\7b\60\00\01\7b\03\83\80\80\80\00\02\00"
  "\01\07\a6\80\80\80\00\02\09\69\36\34\78\32\2e\61"
  "\62\73\00\00\16\69\36\34\78\32\2e\61\62\73\5f\77"
  "\69\74\68\5f\63\6f\6e\73\74\5f\30\00\01\0a\a9\80"
  "\80\80\00\02\87\80\80\80\00\00\20\00\fd\c0\01\0b"
  "\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00\00\80"
  "\ff\ff\ff\ff\ff\ff\ff\7f\fd\c0\01\0b"
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x7b 0x0 0x7b 0x0))
  (v128.const i64x2 0x7b 0x7b)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ff85 0xffff_ffff 0xffff_ff85 0xffff_ffff)
  )
  (v128.const i64x2 0x7b 0x7b)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x80 0x0 0x80 0x0))
  (v128.const i64x2 0x80 0x80)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ff80 0xffff_ffff 0xffff_ff80 0xffff_ffff)
  )
  (v128.const i64x2 0x80 0x80)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x80 0x0 0x80 0x0))
  (v128.const i64x2 0x80 0x80)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0xffff_ff80 0xffff_ffff 0xffff_ff80 0xffff_ffff)
  )
  (v128.const i64x2 0x80 0x80)
)
(assert_return
  (invoke "i64x2.abs_with_const_0")
  (v128.const i64x2 0x8000_0000_0000_0000 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.abs"
    (v128.const i32x4 0x0 0x8000_0000 0xffff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000_0000_0000 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.abs" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\43\00\00\00\00\fd\c0\01"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\c0\01\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\82\80\80\80\00\01\00\07\97\80\80"
  "\80\00\01\13\69\36\34\78\32\2e\61\62\73\2d\69\36"
  "\34\78\32\2e\61\62\73\00\00\0a\90\80\80\80\00\01"
  "\8a\80\80\80\00\00\20\00\fd\c0\01\fd\c0\01\0b"
)
(assert_return
  (invoke "i64x2.abs-i64x2.abs"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
