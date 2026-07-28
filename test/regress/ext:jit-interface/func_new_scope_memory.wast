(module
  (type $ft (func (result i32)))
  (memory 1)
  (data (i32.const 8) "\44\33\22\11")
  (data (i32.const 16) "\00\41\00\28\02\08\0b")  ;; (func (result i32) (i32.load offset=8 (i32.const 0)))
  (scope $s
    (memory 0))
  (func (export "main") (result i32)
    (call_ref $ft
      (func.new 0 $ft $s (i32.const 16) (i32.const 7)))
  )
)
(assert_return (invoke "main") (i32.const 0x11223344))
