;; Multiple memories

(module
  (memory $mem1 1)
  (memory $mem2 1)

  (func (export "load1") (param i32) (result i64)
    (i64.load $mem1 (local.get 0))
    (br 0)
    (i32.const 0x8899AABB)
    unreachable
    (i32.const 0x11223344)
    unreachable
    (i32.const 0x55667788)
    unreachable
    (i32.const 0x10203040)
    unreachable
    (i32.const 0x50607080)
    unreachable
  )
  (func (export "load2") (param i32) (result i64)
    (i64.load $mem2 (local.get 0))
    (br 0)
    (i32.const 0x8899AABB)
    unreachable
    (i32.const 0x11223344)
    unreachable
    (i32.const 0x55667788)
    unreachable
    (i32.const 0x10203040)
    unreachable
    (i32.const 0x50607080)
    unreachable
  )

  (func (export "store1") (param i32 i64)
    (i64.store $mem1 (local.get 0) (local.get 1))
    (br 0)
    (i64.store $mem1 (local.get 0) (local.get 1))
    (i32.const 0x8899AABB)
    unreachable
    (i64.store $mem1 offset=1 (local.get 0) (local.get 1))
    (i32.const 0x11223344)
    unreachable
    (i64.store $mem1 offset=3 (local.get 0) (local.get 1))
    (i32.const 0x55667788)
    unreachable
    (i64.store $mem1 offset=700 (local.get 0) (local.get 1))
    (i32.const 0x10203040)
    unreachable
    (i64.store $mem1 offset=7777 (local.get 0) (local.get 1))
    (i32.const 0x50607080)
    unreachable
  )
  (func (export "store2") (param i32 i64)
    (i64.store $mem2 (local.get 0) (local.get 1))
    (br 0)
    (i64.store $mem2 (local.get 0) (local.get 1))
    (i32.const 0x8899AABB)
    unreachable
    (i64.store $mem2 offset=9 (local.get 0) (local.get 1))
    (i32.const 0x11223344)
    unreachable
    (i64.store $mem2 offset=999 (local.get 0) (local.get 1))
    (i32.const 0x55667788)
    unreachable
    (i64.store $mem2 offset=9999 (local.get 0) (local.get 1))
    (i32.const 0x10203040)
    unreachable
    (i64.store $mem2 offset=9999 (local.get 0) (local.get 1))
    (i32.const 0x50607080)
    unreachable
  )
)

(invoke "store1" (i32.const 0) (i64.const 1))
(invoke "store2" (i32.const 0) (i64.const 2))
(assert_return (invoke "load1" (i32.const 0)) (i64.const 1))
(assert_return (invoke "load2" (i32.const 0)) (i64.const 2))
