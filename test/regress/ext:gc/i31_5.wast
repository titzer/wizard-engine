(module
  (global $i (ref i31) (ref.i31 (i32.const 2)))
  (global $m (mut (ref i31)) (ref.i31 (i32.const 3)))

  (func (export "get_globals") (result i32 i32)
    (i31.get_u (global.get $i))
    (i31.get_u (global.get $m))
  )

  (func (export "set_global") (param i32)
    (global.set $m (ref.i31 (local.get 0)))
  )
)

(assert_return (invoke "get_globals") (i32.const 2) (i32.const 3))

(invoke "set_global" (i32.const 1234))
(assert_return (invoke "get_globals") (i32.const 2) (i32.const 1234))
