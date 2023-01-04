(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80"
  "\80\80\00\01\04\6d\61\69\6e\00\00\0a\8d\80\80\80"
  "\00\01\87\80\80\80\00\00\20\00\20\01\6b\0b"
)
(assert_return
  (invoke "main" (i32.const 0x8) (i32.const 0x9))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "main" (i32.const 0x21) (i32.const 0x2c))
  (i32.const 0xffff_fff5)
)
(assert_return
  (invoke "main" (i32.const 0x6f) (i32.const 0xde))
  (i32.const 0xffff_ff91)
)
(assert_return
  (invoke "main" (i32.const 0x8ae) (i32.const 0xd05))
  (i32.const 0xffff_fba9)
)
(assert_return
  (invoke "main" (i32.const 0x69f_6bc7) (i32.const 0x27bc_86aa))
  (i32.const 0xdee2_e51d)
)
(assert_return
  (invoke "main" (i32.const 0x8000_0000) (i32.const 0x8000_0000))
  (i32.const 0x0)
)
(assert_return
  (invoke "main" (i32.const 0x8111_1111) (i32.const 0x8333_3333))
  (i32.const 0xfddd_ddde)
)
(assert_return
  (invoke "main" (i32.const 0x7735_9400) (i32.const 0x1))
  (i32.const 0x7735_93ff)
)
