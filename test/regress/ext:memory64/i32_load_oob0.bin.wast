(module definition binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7e\00\03\82\80\80\80\00\01\00\05\83\80\80\80"
  "\00\01\04\02\07\88\80\80\80\00\01\04\6c\6f\61\64"
  "\00\00\0a\8e\80\80\80\00\01\88\80\80\80\00\00\20"
  "\00\28\02\00\1a\0b"
)
(module instance)
(assert_return (invoke "load" (i64.const 0x0)))
(assert_return (invoke "load" (i64.const 0x100)))
(assert_return (invoke "load" (i64.const 0x1000)))
(assert_return (invoke "load" (i64.const 0x1_0000)))
(assert_trap (invoke "load" (i64.const 0x2_0000)) "out of bounds memory access")
(assert_trap (invoke "load" (i64.const 0x4_0000)) "out of bounds memory access")
(assert_trap (invoke "load" (i64.const 0x8_0000)) "out of bounds memory access")
(assert_trap
  (invoke "load" (i64.const 0x10_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x20_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x40_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x80_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x10_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x20_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x40_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x80_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x100_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x200_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x400_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x800_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x10_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x20_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x40_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x80_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x100_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x200_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x400_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x800_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x10_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x20_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x40_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x80_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x100_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x200_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x400_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x800_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x1000_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x2000_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x4000_0000_0000_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i64.const 0x8000_0000_0000_0000))
  "out of bounds memory access"
)
