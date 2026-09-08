;; INNER_CALIBRATION = 161
;; struct.new: allocation of structs of different sizes and field kinds.
(module
  (type $s1 (struct (field i32)))
  (type $s4 (struct (field i32) (field i64) (field f64) (field (ref null $s1))))
  (type $s8r (struct (field anyref) (field anyref) (field anyref) (field anyref)
                     (field anyref) (field anyref) (field anyref) (field anyref)))
  (type $s8m (struct (field i32) (field i64) (field f32) (field f64)
                     (field i8) (field i16) (field anyref) (field (ref null $s1))))
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $new_s1 (i32.const 16100 (;$INNER_ITERATIONS;)))
      (call $new_s4 (i32.const 16100 (;$INNER_ITERATIONS;)))
      (call $new_s8r (i32.const 16100 (;$INNER_ITERATIONS;)))
      (call $new_default_s8m (i32.const 16100 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; One primitive field.
  (func $new_s1 (param $n i32)
    (loop $l
      (drop (struct.new $s1 (local.get $n)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Four fields of mixed kinds.
  (func $new_s4 (param $n i32)
    (loop $l
      (drop (struct.new $s4 (local.get $n) (i64.const 2) (f64.const 3.0) (ref.null $s1)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Eight reference fields.
  (func $new_s8r (param $n i32)
    (loop $l
      (drop (struct.new $s8r (ref.null any) (ref.null any) (ref.null any) (ref.null any)
                             (ref.null any) (ref.null any) (ref.null any) (ref.null any)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Eight mixed fields, default-initialized.
  (func $new_default_s8m (param $n i32)
    (loop $l
      (drop (struct.new_default $s8m))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
