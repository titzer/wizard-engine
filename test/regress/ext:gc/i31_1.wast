(module $anyref_global_of_i31ref
  (global $c anyref (ref.i31 (i32.const 1234)))
  (global $m (mut anyref) (ref.i31 (i32.const 5678)))

  (func (export "get_globals") (result i32 i32)
    (i31.get_u (ref.cast i31ref (global.get $c)))
    (i31.get_u (ref.cast i31ref (global.get $m)))
  )

  (func (export "set_global") (param i32)
    (global.set $m (ref.i31 (local.get 0)))
  )
)

(assert_return (invoke "get_globals") (i32.const 1234) (i32.const 5678))
(invoke "set_global" (i32.const 0))
(assert_return (invoke "get_globals") (i32.const 1234) (i32.const 0))
