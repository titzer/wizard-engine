;; INNER_CALIBRATION = 12500
(module
  (memory 1)
  (data "\02\07\01\08\04\07\FF\08\02\FE\01\08\FD\07\01\08")
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const __INNER_ITERATIONS__))
    (loop $l
      (memory.init 0 (i32.const 0) (i32.const 0) (i32.const 16))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
