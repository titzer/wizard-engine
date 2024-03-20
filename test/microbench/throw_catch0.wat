;; INNER_CALIBRATION = 10500
(module
  (tag $e)
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const __INNER_ITERATIONS__))
    (loop $l
      (i32.eqz (local.tee $y (i32.sub (local.get $y) (i32.const 1))))
      
      (br_if 1)
      (try_table (catch $e $l)
        (throw $e)
      )
    )
  )
)
