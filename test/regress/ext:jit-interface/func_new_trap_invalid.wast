(module
  (type $mt (func))
  (type $ft (func (result i32)))
  (memory 1)
  (data (i32.const 16) "\00\7c\0b")  ;; (func (result i32) (i64.add)) -- does not validate
  (scope $s)
  (func (export "main")
    (drop (func.new 0 $ft $s (i32.const 16) (i32.const 3)))
  )
)
(assert_trap (invoke "main") "function did not validate")
