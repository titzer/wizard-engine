(module
  (memory 1)
  (func (export "main")
    ;; Atomic i32 stores
    i32.const 0 i32.const 1 i32.atomic.store
    i32.const 0 i32.const 1 i32.atomic.store8
    i32.const 0 i32.const 1 i32.atomic.store16
  )
  (func (export "test_i32_atomic_store") (result i32)
    i32.const 0
    i32.const 1
    i32.atomic.store offset=0
    i32.const 1
  )
  (func (export "test_i32_atomic_store8") (result i32)
    i32.const 0
    i32.const 1
    i32.atomic.store8 offset=0
    i32.const 1
  )
  (func (export "test_i32_atomic_store16") (result i32)
    i32.const 0
    i32.const 1
    i32.atomic.store16 offset=0
    i32.const 1
  )
)

(assert_return (invoke "test_i32_atomic_store") (i32.const 1))
(assert_return (invoke "test_i32_atomic_store8") (i32.const 1))
(assert_return (invoke "test_i32_atomic_store16") (i32.const 1))
(assert_return (invoke "main"))

