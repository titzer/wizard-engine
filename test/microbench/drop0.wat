;; INNER_CALIBRATION = 8900
(module
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (i32.const 0)
      (drop)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
