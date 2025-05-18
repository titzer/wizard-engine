;; INNER_CALIBRATION = 8900
(module
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $loop (i32.const 890000 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $loop (param i32)
    (local.get 0)
    (loop (param i32)
      (i32.const 1)
      (i32.sub)
      (local.tee 0)
      (local.get 0)
      (br_if 0)
      (drop)
    )
  )
)
