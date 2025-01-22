(module $env
  (global (export "g") i32 (i32.const 42))
)
(register "env")
(module $i31ref_of_global_global_initializer
  (global $g0 (import "env" "g") i32)
  (global $g1 i31ref (ref.i31 (global.get $g0)))
  (func (export "get") (result i32)
    (i31.get_u (global.get $g1))
  )
)

(assert_return (invoke "get") (i32.const 42))
