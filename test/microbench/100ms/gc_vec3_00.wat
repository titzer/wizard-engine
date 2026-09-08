;; INNER_CALIBRATION = 126
;; Vector arithmetic on structs of three f64s: an add that allocates a new vector per step,
;; and a dot product that does not allocate.
(module
  (type $v3 (struct (field f64) (field f64) (field f64)))
  (func $main (export "main")
    (local $y i32)
    (local $v (ref $v3))
    (local.set $v (struct.new $v3 (f64.const 1.0) (f64.const 2.0) (f64.const 3.0)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (drop (call $add_n (local.get $v) (i32.const 12600 (;$INNER_ITERATIONS;))))
      (drop (call $dot_n (local.get $v) (i32.const 12600 (;$INNER_ITERATIONS;))))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $add (param $a (ref $v3)) (param $b (ref $v3)) (result (ref $v3))
    (struct.new $v3
      (f64.add (struct.get $v3 0 (local.get $a)) (struct.get $v3 0 (local.get $b)))
      (f64.add (struct.get $v3 1 (local.get $a)) (struct.get $v3 1 (local.get $b)))
      (f64.add (struct.get $v3 2 (local.get $a)) (struct.get $v3 2 (local.get $b)))))
  (func $dot (param $a (ref $v3)) (param $b (ref $v3)) (result f64)
    (f64.add
      (f64.mul (struct.get $v3 0 (local.get $a)) (struct.get $v3 0 (local.get $b)))
      (f64.add
        (f64.mul (struct.get $v3 1 (local.get $a)) (struct.get $v3 1 (local.get $b)))
        (f64.mul (struct.get $v3 2 (local.get $a)) (struct.get $v3 2 (local.get $b))))))
  ;; Accumulates {v} into a running sum, allocating a new vector each step.
  (func $add_n (param $v (ref $v3)) (param $n i32) (result (ref $v3))
    (local $acc (ref $v3))
    (local.set $acc (struct.new $v3 (f64.const 0.0) (f64.const 0.0) (f64.const 0.0)))
    (loop $l
      (local.set $acc (call $add (local.get $acc) (local.get $v)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  (func $dot_n (param $v (ref $v3)) (param $n i32) (result f64)
    (local $acc f64)
    (loop $l
      (local.set $acc (f64.add (local.get $acc) (call $dot (local.get $v) (local.get $v))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
)
