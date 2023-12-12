;; INNER_CALIBRATION = 5500
(module
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local $z i32)
    (local.set $y (i32.const 550000))
    (loop $l
      (local.set $z (i32.add (local.get $z) (local.get $y)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
