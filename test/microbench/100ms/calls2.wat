;; INNER_CALIBRATION = 45000
(module
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 4500000))
    (loop $l
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
    (call $A)
    (call $B)
  )
  (func $A
    (local $y i32)
    (local.set $y (i32.const 4500000))
    (loop $l
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $B
    (local $y i32)
    (local.set $y (i32.const 4500000))
    (loop $l
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
