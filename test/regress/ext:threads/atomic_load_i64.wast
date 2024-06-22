(module
  (memory 1)
  (func (export "main")
    ;; Atomic i64 loads
    i32.const 0 i64.atomic.load drop
    i32.const 0 i64.atomic.load8_u drop
    i32.const 0 i64.atomic.load16_u drop
    i32.const 0 i64.atomic.load32_u drop
  )
  (func (export "test_i64_atomic_load") (result i64)
    i32.const 0
    i64.atomic.load offset=0
  )
  (func (export "test_i64_atomic_load8_u") (result i64)
    i32.const 0
    i64.atomic.load8_u offset=0
  )
  (func (export "test_i64_atomic_load16_u") (result i64)
    i32.const 0
    i64.atomic.load16_u offset=0
  )
  (func (export "test_i64_atomic_load32_u") (result i64)
    i32.const 0
    i64.atomic.load32_u offset=0
  )
)

(assert_return (invoke "test_i64_atomic_load") (i64.const 0))
(assert_return (invoke "test_i64_atomic_load8_u") (i64.const 0))
(assert_return (invoke "test_i64_atomic_load16_u") (i64.const 0))
(assert_return (invoke "test_i64_atomic_load32_u") (i64.const 0))

(assert_return (invoke "main"))

