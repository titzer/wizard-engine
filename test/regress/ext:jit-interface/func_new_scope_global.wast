(module
  (type $ft (func (result i32)))
  (memory 1)
  (global $g i32 (i32.const 1234))
  (data (i32.const 16) "\00\23\00\0b")  ;; (func (result i32) (global.get 0))
  (scope $s
    (global $g))
  (func (export "main") (result i32)
    (call_ref $ft
      (func.new 0 $ft $s (i32.const 16) (i32.const 4)))
  )
)
(assert_return (invoke "main") (i32.const 1234))
