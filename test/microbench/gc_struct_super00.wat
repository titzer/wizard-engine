;; INNER_CALIBRATION = 186
;; Field access through a supertype whose field type is wider than the subtype's (covariant
;; immutable fields): an anyref field, which may hold an i31, narrowed to a struct reference.
(module
  (type $leaf (struct (field i32)))
  (type $sup (sub (struct (field anyref) (field i64))))
  (type $sub (sub $sup (struct (field (ref $leaf)) (field i64))))
  (func $main (export "main")
    (local $y i32)
    (local $o (ref $sub))
    (local.set $o (struct.new $sub (struct.new $leaf (i32.const 1)) (i64.const 2)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $get_narrow_via_sub (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $get_narrow_via_sup (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (drop (call $get_i64_via_sup (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;))))
      (call $new_sub (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; The narrowed field read with its precise (struct reference) type.
  (func $get_narrow_via_sub (param $o (ref $sub)) (param $n i32)
    (loop $l
      (drop (struct.get $sub 0 (local.get $o)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; The narrowed field read through the supertype, as an anyref.
  (func $get_narrow_via_sup (param $o (ref $sup)) (param $n i32)
    (loop $l
      (drop (struct.get $sup 0 (local.get $o)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; The primitive field following the narrowed field, read through the supertype.
  (func $get_i64_via_sup (param $o (ref $sup)) (param $n i32) (result i64)
    (local $acc i64)
    (loop $l
      (local.set $acc (i64.add (local.get $acc) (struct.get $sup 1 (local.get $o))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  ;; Allocation of the subtype, whose layout is inherited from the supertype.
  (func $new_sub (param $n i32)
    (local $leaf (ref $leaf))
    (local.set $leaf (struct.new $leaf (i32.const 1)))
    (loop $l
      (drop (struct.new $sub (local.get $leaf) (i64.const 2)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
