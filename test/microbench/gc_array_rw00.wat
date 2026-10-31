;; INNER_CALIBRATION = 24000
(module
  (type $at (array (mut i32)))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $fill_sum (array.new_default $at (i32.const 1 (;$INNER_ITERATIONS;))))
      drop
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Fills the array with its indices, then sums it.
  (func $fill_sum (param $a (ref $at)) (result i32)
    (local $i i32) (local $sum i32)
    (block $done
      (loop $l
        (br_if $done (i32.ge_u (local.get $i) (array.len (local.get $a))))
        (array.set $at (local.get $a) (local.get $i) (local.get $i))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $l)
      )
    )
    (local.set $i (i32.const 0))
    (block $done
      (loop $l
        (br_if $done (i32.ge_u (local.get $i) (array.len (local.get $a))))
        (local.set $sum (i32.add (local.get $sum) (array.get $at (local.get $a) (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $l)
      )
    )
    (local.get $sum)
  )
)
