;; INNER_CALIBRATION = 3660
(module
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (drop (call $add (i32.const 5) (i32.const 6)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $add (param i32 i32) (result i32)
    (i32.add (local.get 0) (local.get 1))
  )
)
