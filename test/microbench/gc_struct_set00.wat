;; INNER_CALIBRATION = 142
;; struct.set: writing fields of different kinds to the same struct.
(module
  (type $s (struct (field (mut i32)) (field (mut i64)) (field (mut (ref null $s))) (field (mut anyref)) (field (mut i16))))
  (func $main (export "main")
    (local $y i32)
    (local $o (ref $s))
    (local.set $o (struct.new_default $s))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $set_i32 (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $set_i64 (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $set_ref (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $set_anyref_mixed (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $set_i16 (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $set_i32 (param $o (ref $s)) (param $n i32)
    (loop $l
      (struct.set $s 0 (local.get $o) (local.get $n))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $set_i64 (param $o (ref $s)) (param $n i32)
    (loop $l
      (struct.set $s 1 (local.get $o) (i64.extend_i32_u (local.get $n)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; A reference to a struct (the struct itself).
  (func $set_ref (param $o (ref $s)) (param $n i32)
    (loop $l
      (struct.set $s 2 (local.get $o) (local.get $o))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; An anyref field, alternately written with an i31 and a reference.
  (func $set_anyref_mixed (param $o (ref $s)) (param $n i32)
    (loop $l
      (struct.set $s 3 (local.get $o) (ref.i31 (local.get $n)))
      (struct.set $s 3 (local.get $o) (local.get $o))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; A packed i16 field.
  (func $set_i16 (param $o (ref $s)) (param $n i32)
    (loop $l
      (struct.set $s 4 (local.get $o) (local.get $n))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
