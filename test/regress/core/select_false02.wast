(module
  (func $nop)
  (func (export "main") (param i32) (result i32)
     i32.const 11
     local.get 0
     call $nop
     i32.const 0
     select
  )
)

(assert_return (invoke "main" (i32.const 12)) (i32.const 12))
