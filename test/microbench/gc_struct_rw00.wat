;; INNER_CALIBRATION = 1000
(module
  (type $st (struct (field $a (mut i32)) (field $b (mut i64)) (field $c (mut f64)) (field $d (mut i8))))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $rw (struct.new_default $st) (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Increments each field of the struct in a loop.
  (func $rw (param $s (ref $st)) (param $n i32)
    (block $done
      (loop $l
        (br_if $done (i32.eqz (local.get $n)))
        (struct.set $st $a (local.get $s) (i32.add (struct.get $st $a (local.get $s)) (i32.const 1)))
        (struct.set $st $b (local.get $s) (i64.add (struct.get $st $b (local.get $s)) (i64.const 3)))
        (struct.set $st $c (local.get $s) (f64.add (struct.get $st $c (local.get $s)) (f64.const 0.5)))
        (struct.set $st $d (local.get $s) (i32.add (struct.get_u $st $d (local.get $s)) (i32.const 1)))
        (local.set $n (i32.sub (local.get $n) (i32.const 1)))
        (br $l)
      )
    )
  )
)
