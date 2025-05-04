;; INNER_CALIBRATION = 8900
(module
  (global $g (mut i64) (i64.const 0))
  (func $main (export "main")
    (local $y i64)

    (global.set $g (i64.const 890000 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.tee $y (i64.sub (global.get $g) (i64.const 1)))
      (global.set $g (local.get $y))
      (br_if $l (i64.ne (i64.const 0)))
    )
  )
)
