(module
  (memory i64 2)
  (func (export "store") (param i64)
    (i32.store (local.get 0) (i32.const 0x44332211))
  )
)

(assert_return (invoke "store" (i64.const 0)))
(assert_return (invoke "store" (i64.const 0x100)))
(assert_return (invoke "store" (i64.const 0x1000)))
(assert_return (invoke "store" (i64.const 0x10000)))

(assert_trap (invoke "store" (i64.const 0x2_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1_00000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2_00000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4_00000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8_00000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x10_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x20_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x40_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x80_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x100_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x200_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x400_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x800_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x10_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x20_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x40_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x80_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x100_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x200_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x400_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x800_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8000_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8_0000_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x10_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x20_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x40_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x80_0000_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x100_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x200_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x400_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x800_0000_0000_0000)) "out of bounds memory access")

(assert_trap (invoke "store" (i64.const 0x1000_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x2000_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x4000_0000_0000_0000)) "out of bounds memory access")
(assert_trap (invoke "store" (i64.const 0x8000_0000_0000_0000)) "out of bounds memory access")

