;; INNER_CALIBRATION = 7050
(module
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 705000))
    (loop $l
      (if (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
        (then (br $l))
        (else nop))
    )
  )
)
