;; INNER_CALIBRATION = 0.2
(module
  (memory 1)
  (func (export "_start")
    (call $main)
  )
  (func $find (param i32) (result i32)
    (local $i i32)
    (loop $l
      (local.get $i)
      (br_if 1 (i32.eq (local.get 0) (i32.load (local.get $i))))
      (drop)
      (i32.ne (local.tee $i (i32.add (local.get $i) (i32.const 4))) (i32.const 65536))
      (br_if $l)
    )
    (i32.const -1)
  )
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const __INNER_ITERATIONS__))
    (loop $l
      (call $find (i32.const 6677))
      (drop)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
 )
 