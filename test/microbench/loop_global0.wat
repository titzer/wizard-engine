;; INNER_CALIBRATION = 8900
(module
  (global $g (mut i32) (i32.const 0))
  (func $main (export "main")
    (local $y i32)

    (global.set $g (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.tee $y (i32.sub (global.get $g) (i32.const 1)))
      (global.set $g (local.get $y))
      (br_if $l)
    )
  )
)
