;; INNER_CALIBRATION = 134
;; array.copy: copying 256 elements between arrays with the same and with different element
;; types, and overlapping copies within one array.
(module
  (type $leaf (struct (field i32)))
  (type $i32s (array (mut i32)))
  (type $refs (array (mut (ref null $leaf))))
  (type $anys (array (mut anyref)))
  (func $main (export "main")
    (local $y i32)
    (local $src32 (ref $i32s))
    (local $dst32 (ref $i32s))
    (local $srcany (ref $anys))
    (local $dstany (ref $anys))
    (local $srcref (ref $refs))
    (local.set $src32 (array.new $i32s (i32.const 1) (i32.const 256)))
    (local.set $dst32 (array.new_default $i32s (i32.const 256)))
    (local.set $srcany (array.new $anys (ref.i31 (i32.const 2)) (i32.const 256)))
    (local.set $dstany (array.new_default $anys (i32.const 256)))
    (local.set $srcref (array.new $refs (struct.new $leaf (i32.const 3)) (i32.const 256)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $copy_i32 (local.get $dst32) (local.get $src32) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $copy_anyref (local.get $dstany) (local.get $srcany) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $copy_ref_to_anyref (local.get $dstany) (local.get $srcref) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $copy_overlap (local.get $srcany) (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; i32 to i32.
  (func $copy_i32 (param $dst (ref $i32s)) (param $src (ref $i32s)) (param $n i32)
    (loop $l
      (array.copy $i32s $i32s (local.get $dst) (i32.const 0) (local.get $src) (i32.const 0) (i32.const 256))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; anyref to anyref.
  (func $copy_anyref (param $dst (ref $anys)) (param $src (ref $anys)) (param $n i32)
    (loop $l
      (array.copy $anys $anys (local.get $dst) (i32.const 0) (local.get $src) (i32.const 0) (i32.const 256))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Struct references to anyref, which may require a change of representation.
  (func $copy_ref_to_anyref (param $dst (ref $anys)) (param $src (ref $refs)) (param $n i32)
    (loop $l
      (array.copy $anys $refs (local.get $dst) (i32.const 0) (local.get $src) (i32.const 0) (i32.const 256))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Overlapping copy of 255 elements up by one, within the same array.
  (func $copy_overlap (param $a (ref $anys)) (param $n i32)
    (loop $l
      (array.copy $anys $anys (local.get $a) (i32.const 1) (local.get $a) (i32.const 0) (i32.const 255))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
