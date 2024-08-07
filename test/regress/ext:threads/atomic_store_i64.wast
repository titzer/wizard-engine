(module
  (memory 1)
  (func (export "main")
    ;; Atomic i64 stores
    i32.const 0 i64.const 42 i64.atomic.store
    i32.const 0 i64.const 42 i64.atomic.store8
    i32.const 0 i64.const 42 i64.atomic.store16
    i32.const 0 i64.const 42 i64.atomic.store32
  )
  (func (export "test_i64_atomic_store") (result i64)
    i32.const 0
    i64.const 42
    i64.atomic.store offset=0
    i64.const 42
  )
  (func (export "test_i64_atomic_store8") (result i64)
    i32.const 0
    i64.const 42
    i64.atomic.store8 offset=0
    i64.const 42
  )
  (func (export "test_i64_atomic_store16") (result i64)
    i32.const 0
    i64.const 42
    i64.atomic.store16 offset=0
    i64.const 42
  )
  (func (export "test_i64_atomic_store32") (result i64)
    i32.const 0
    i64.const 42
    i64.atomic.store32 offset=0
    i64.const 42
  )
)

(assert_return (invoke "test_i64_atomic_store") (i64.const 42))
(assert_return (invoke "test_i64_atomic_store8") (i64.const 42))
(assert_return (invoke "test_i64_atomic_store16") (i64.const 42))
(assert_return (invoke "test_i64_atomic_store32") (i64.const 42))

(assert_return (invoke "main"))

