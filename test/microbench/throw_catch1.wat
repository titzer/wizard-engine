;; INNER_CALIBRATION = 8500
(module
  (tag $e (param i32))
  (func $main (export "main")
    (local $y i32)

    (local.tee $y (i32.const __INNER_ITERATIONS__))
    (loop $l (param i32)
      drop
      (i32.eqz (local.tee $y (i32.sub (local.get $y) (i32.const 1))))
      
      (br_if 1)
      (try_table (catch $e $l)
        local.get $y
        throw $e
      )
    )
  )
)
