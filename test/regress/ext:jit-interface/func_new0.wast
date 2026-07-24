(module
  (type $ft (func (result i32)))
  (memory 1)
  (data (i32.const 16) "\00\41\2a\0b")  ;; (func (result i32) (i32.const 42))
  (scope $s)
  (func (export "main") (result i32)
    (call_ref $ft
      (func.new 0 $ft $s (i32.const 16) (i32.const 4)))
  )
)
(assert_return (invoke "main") (i32.const 42))
