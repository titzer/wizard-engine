;; INNER_CALIBRATION = 156
;; array.new, array.new_default, array.new_fixed: allocation of arrays of different element kinds.
(module
  (type $i8s (array (mut i8)))
  (type $i32s (array (mut i32)))
  (type $anys (array (mut anyref)))
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $new_i8 (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $new_anyref (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $new_default_i32 (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $new_fixed_anyref (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 64 packed i8 elements, filled with a value.
  (func $new_i8 (param $n i32)
    (loop $l
      (drop (array.new $i8s (i32.const 7) (i32.const 64)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 64 anyref elements, filled with an i31.
  (func $new_anyref (param $n i32)
    (loop $l
      (drop (array.new $anys (ref.i31 (i32.const 7)) (i32.const 64)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 64 i32 elements, default-initialized.
  (func $new_default_i32 (param $n i32)
    (loop $l
      (drop (array.new_default $i32s (i32.const 64)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 4 anyref elements from the operand stack.
  (func $new_fixed_anyref (param $n i32)
    (loop $l
      (drop (array.new_fixed $anys 4 (ref.i31 (i32.const 1)) (ref.null any) (ref.i31 (i32.const 3)) (ref.null any)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
