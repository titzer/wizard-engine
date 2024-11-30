;; 32-bit
(module
  (memory 0)
  (func (export "size") (result i32) (memory.size))
)
(assert_return (invoke "size") (i32.const 0))

;; 64-bit
(module
  (memory i64 0)
  (func (export "size") (result i64) (memory.size))
)
(assert_return (invoke "size") (i64.const 0))
