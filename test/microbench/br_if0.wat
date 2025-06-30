;; INNER_CALIBRATION = 2300
(module
 (func $main (export "main")
    (local $x i32)
    (local $y i32)

    (local.set $y (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.set $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l (i32.eq (local.get $y) (i32.const 1)))
      (br_if $l (local.get $y))
    )
 )
 (export "_start" (func $main))
)
