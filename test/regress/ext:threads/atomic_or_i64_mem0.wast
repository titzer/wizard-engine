;; Regression: i64.atomic.rmw.or must OR the operand into memory.
;; The V3 interpreter dispatched I64_ATOMIC_RMW_OR to I64_AND. atomic_or_i64
;; only checks the returned (old) value, which is identical for AND and OR,
;; so this test also checks the value left in memory after the RMW.
(module
  (memory (export "memory") 1)
  (func (export "rmw_or") (param i64 i64) (result i64)
    i32.const 0
    local.get 0
    i64.store
    i32.const 0
    local.get 1
    i64.atomic.rmw.or
  )
  (func (export "load") (result i64)
    i32.const 0
    i64.load
  )
)

(assert_return (invoke "rmw_or" (i64.const 5) (i64.const 3)) (i64.const 5))
(assert_return (invoke "load") (i64.const 7))
(assert_return (invoke "rmw_or" (i64.const 0x1122334455667788) (i64.const 0xf0f0f0f0f0f0f0f0)) (i64.const 0x1122334455667788))
(assert_return (invoke "load") (i64.const 0xf1f2f3f4f5f6f7f8))
(assert_return (invoke "rmw_or" (i64.const 0) (i64.const 0x8000000000000001)) (i64.const 0))
(assert_return (invoke "load") (i64.const 0x8000000000000001))
