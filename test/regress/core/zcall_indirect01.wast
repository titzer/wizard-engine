(module
  (type $t (func))
  (table $b (;0;) 8 8 funcref)
  (elem (i32.const 0) 0 0 0 0 0 0 0 0)

  (func $indirect)
  (func $check (param i32 i32)
    (br_if 0 (i32.eq (local.get 0) (local.get 1)))
    unreachable
  )
  (func (export "m") (param i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local.tee 1 (i32.add (local.get 0) (i32.const 1)))

    call_indirect (type $t)

    (call $check (local.get 0) (i32.const 0))
    (call $check (local.get 1) (i32.const 1))
  )
)

(assert_return (invoke "m" (i32.const 0)))
