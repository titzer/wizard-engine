(module $anyref_global_of_i31ref
  (global $c i31ref (ref.i31 (i32.const 11223344)))

  (func (export "get_globals") (result i32)
    (i31.get_u (global.get $c))
  )
)

(assert_return (invoke "get_globals") (i32.const 11223344))
