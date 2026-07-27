(module
  (type $ft (func (result i32)))
  (memory 1)
  (data (i32.const 16) "\00\10\00\0b")  ;; (func (result i32) (call 0))
  (scope $s
    (func $seven))  ;; only $seven is in scope, renumbered to index 0
  (func (export "main") (result i32)
    (call_ref $ft
      (func.new 0 $ft $s (i32.const 16) (i32.const 4)))
  )
  (func $seven (result i32) (i32.const 7))
)
(assert_return (invoke "main") (i32.const 7))
