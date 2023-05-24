;; Functions

(module
  (func $call (export "call") (param $c1 i32) (result i32)
    (if (result i32) (i32.eq (i32.const 0) (i32.and (local.get $c1) (i32.const 7)))
      (then
        (loop $l
          (local.set $c1 (i32.sub (local.get $c1) (i32.const 1)))
            (br_if $l (local.get $c1))
	)
        (local.get $c1)
      )
      (else
        (call $call (i32.sub (local.get $c1) (i32.const 1)))
        (loop $l
          (local.set $c1 (i32.sub (local.get $c1) (i32.const 1)))
            (br_if $l (local.get $c1))
	)
      )
    )
  )
)

(assert_return (invoke "call" (i32.const 135)) (i32.const 0))
(assert_return (invoke "call" (i32.const 135)) (i32.const 0))
(assert_return (invoke "call" (i32.const 17)) (i32.const 0))
(assert_return (invoke "call" (i32.const 16)) (i32.const 0))
(assert_return (invoke "call" (i32.const 15)) (i32.const 0))
(assert_return (invoke "call" (i32.const 14)) (i32.const 0))
(assert_return (invoke "call" (i32.const 13)) (i32.const 0))
