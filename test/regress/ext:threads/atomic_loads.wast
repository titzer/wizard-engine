(module
  (memory 1)
  (func (export "main")
    ;; Atomic loads
    i32.const 0 i32.atomic.load drop
    i32.const 0 i64.atomic.load drop
    i32.const 0 i32.atomic.load8_u drop
    i32.const 0 i32.atomic.load16_u drop
    i32.const 0 i64.atomic.load8_u drop
    i32.const 0 i64.atomic.load16_u drop
    i32.const 0 i64.atomic.load32_u drop
  )
  (func (export "test_i32_atomic_load") (result i32)
    i32.const 0
    i32.atomic.load offset=0
  )
  (func (export "test_i64_atomic_load") (result i64)
    i32.const 0
    i64.atomic.load offset=0
  )
  (func (export "test_i32_atomic_load8_u") (result i32)
    i32.const 0
    i32.atomic.load8_u offset=0
  )
  (func (export "test_i32_atomic_load16_u") (result i32)
    i32.const 0
    i32.atomic.load16_u offset=0
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

(assert_return (invoke "test_i32_atomic_load") (i32.const 0))
(assert_return (invoke "test_i64_atomic_load") (i64.const 0))
(assert_return (invoke "test_i32_atomic_load8_u") (i32.const 0))
(assert_return (invoke "test_i32_atomic_load16_u") (i32.const 0))
(assert_return (invoke "test_i64_atomic_load8_u") (i64.const 0))
(assert_return (invoke "test_i64_atomic_load16_u") (i64.const 0))
(assert_return (invoke "test_i64_atomic_load32_u") (i64.const 0))

(assert_return (invoke "main"))
