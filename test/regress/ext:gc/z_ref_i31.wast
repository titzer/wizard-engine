(module
  (func (export "new") (param $i i32) (result i32)
    (local (ref i31))
    (i32.add (local.get 0) (local.get 0))
    ref.i31
    local.tee 1
    i31.get_s
    i32.const 62
    i32.div_s
    local.get 1
    i31.get_s
    i32.sub
  )
)

(assert_return (invoke "new" (i32.const 1)) (i32.const -2))
(assert_return (invoke "new" (i32.const 1111)) (i32.const -2_187))
(assert_return (invoke "new" (i32.const 2222)) (i32.const -4_373))
(assert_return (invoke "new" (i32.const -2222)) (i32.const 4_373))
