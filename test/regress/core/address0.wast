(module
  (memory 1)
  (func (export "8u_bad") (param $i i32)
    (drop (i32.load8_u offset=4294967295 (local.get $i)))
  )
)

(assert_trap (invoke "8u_bad" (i32.const 0)) "out of bounds memory access")
(assert_trap (invoke "8u_bad" (i32.const 1)) "out of bounds memory access")
(assert_trap (invoke "8u_bad" (i32.const 255)) "out of bounds memory access")
(assert_trap (invoke "8u_bad" (i32.const 65536)) "out of bounds memory access")
