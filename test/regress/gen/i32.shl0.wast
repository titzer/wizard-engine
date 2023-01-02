(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.shl (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 1044480)(i32.const 0)) (i32.const 1044480))
(assert_return (invoke "m0" (i32.const 1044480)(i32.const 32)) (i32.const 1044480))
(assert_return (invoke "m0" (i32.const 4294967295)(i32.const 31)) (i32.const 2147483648))
(assert_return (invoke "m0" (i32.const 1044480)(i32.const 36)) (i32.const 16711680))
