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
    (local.tee 2 (i32.add (local.get 0) (i32.const 2)))
    (local.tee 3 (i32.add (local.get 0) (i32.const 3)))
    (local.tee 4 (i32.add (local.get 0) (i32.const 4)))

    call_indirect (type $t)

    (call $check (i32.const 3))
    (call $check (i32.const 2))
    (call $check (i32.const 1))
    
    (call $check (local.get 0) (i32.const 0))
    (call $check (local.get 1) (i32.const 1))
    (call $check (local.get 2) (i32.const 2))
    (call $check (local.get 3) (i32.const 3))
    (call $check (local.get 4) (i32.const 4))
  )
)

(assert_return (invoke "m" (i32.const 0)))
