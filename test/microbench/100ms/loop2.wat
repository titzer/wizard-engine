;; INNER_CALIBRATION = 0.4
(module
  (memory 1)
  (func (export "_start")
    (call $main)
  )
  (func $find (param i32) (result i32)
    (local $i i32)
    (loop $l
      (i32.ne (local.tee $i (i32.add (local.get $i) (i32.const 4))) (i32.const 65536))
      (br_if $l)
    )
    (i32.const -1)
  )
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 40))
    (loop $l
      (call $find (i32.const 6677))
      (drop)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
 )
 