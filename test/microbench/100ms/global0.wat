;; INNER_CALIBRATION = 6700
(module
  (global $g (mut i32) (i32.const 0))
  (func $main (export "main")
    (local $y i32)

    (global.set $g (i32.const 670000 (;$INNER_ITERATIONS;)))
    (loop $l
      (global.set $g (i32.sub (global.get $g) (i32.const 1)))
      (br_if $l (global.get $g))
    )
  )
)
