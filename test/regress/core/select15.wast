(module
  (func $spill)
  (func (export "select") (param i32 i32 i32) (result i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    (local i32)
    
    local.get 0
    local.get 1
    local.get 2

    (local.set 0 (i32.const 11))
    (local.set 1 (i32.const 11))

    (i32.lt_s (local.get 2) (i32.const 3))
    (i32.lt_s (local.get 2) (i32.const 4))
    (i32.lt_s (local.get 2) (i32.const 5))
    (i32.lt_s (local.get 2) (i32.const 6))
    (i32.lt_s (local.get 2) (i32.const 7))

    (i32.lt_s (local.get 2) (i32.const 8))
    (i32.lt_s (local.get 2) (i32.const 9))
    (i32.lt_s (local.get 2) (i32.const 10))
    (i32.lt_s (local.get 2) (i32.const 11))
    (i32.lt_s (local.get 2) (i32.const 12))

    (i32.lt_s (local.get 2) (i32.const 13))
    (i32.lt_s (local.get 2) (i32.const 14))
    (i32.lt_s (local.get 2) (i32.const 15))
    (i32.lt_s (local.get 2) (i32.const 16))
    (i32.lt_s (local.get 2) (i32.const 17))

    local.set 1
    local.set 2
    local.set 3
    local.set 4
    local.set 5

    local.set 5
    local.set 6
    local.set 7
    local.set 8
    local.set 9

    local.set 10
    local.set 11
    local.set 12
    local.set 13
    local.set 14

    select
  )
  (func $nop)
)
(assert_return (invoke "select" (i32.const 666) (i32.const 111) (i32.const 0)) (i32.const 111))
(assert_return (invoke "select" (i32.const -666) (i32.const -111) (i32.const 0)) (i32.const -111))

(assert_return (invoke "select" (i32.const 777) (i32.const 222) (i32.const 1)) (i32.const 777))
(assert_return (invoke "select" (i32.const -777) (i32.const -222) (i32.const 1)) (i32.const -777))
