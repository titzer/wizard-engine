;; INNER_CALIBRATION = 138
;; array.new_data, array.init_data, array.new_elem, array.init_elem: creating and initializing
;; arrays from data and element segments.
(module
  (type $i8s (array (mut i8)))
  (type $i32s (array (mut i32)))
  (type $anys (array (mut anyref)))
  (data $d "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
  (elem $e anyref
    (item (ref.i31 (i32.const 0))) (item (ref.i31 (i32.const 1))) (item (ref.i31 (i32.const 2))) (item (ref.i31 (i32.const 3)))
    (item (ref.i31 (i32.const 4))) (item (ref.i31 (i32.const 5))) (item (ref.i31 (i32.const 6))) (item (ref.i31 (i32.const 7)))
    (item (ref.i31 (i32.const 8))) (item (ref.i31 (i32.const 9))) (item (ref.i31 (i32.const 10))) (item (ref.i31 (i32.const 11)))
    (item (ref.i31 (i32.const 12))) (item (ref.i31 (i32.const 13))) (item (ref.i31 (i32.const 14))) (item (ref.i31 (i32.const 15))))
  (func $main (export "main")
    (local $y i32)
    (local $a32 (ref $i32s))
    (local $aany (ref $anys))
    (local.set $a32 (array.new_default $i32s (i32.const 64)))
    (local.set $aany (array.new_default $anys (i32.const 16)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $new_data_i8 (i32.const 13800 (;$INNER_ITERATIONS;)))
      (call $init_data_i32 (local.get $a32) (i32.const 13800 (;$INNER_ITERATIONS;)))
      (call $new_elem_anyref (i32.const 13800 (;$INNER_ITERATIONS;)))
      (call $init_elem_anyref (local.get $aany) (i32.const 13800 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 256 packed i8 elements from a data segment.
  (func $new_data_i8 (param $n i32)
    (loop $l
      (drop (array.new_data $i8s $d (i32.const 0) (i32.const 256)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 64 i32 elements from a data segment into an existing array.
  (func $init_data_i32 (param $a (ref $i32s)) (param $n i32)
    (loop $l
      (array.init_data $i32s $d (local.get $a) (i32.const 0) (i32.const 0) (i32.const 64))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 16 anyref elements from an element segment.
  (func $new_elem_anyref (param $n i32)
    (loop $l
      (drop (array.new_elem $anys $e (i32.const 0) (i32.const 16)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; 16 anyref elements from an element segment into an existing array.
  (func $init_elem_anyref (param $a (ref $anys)) (param $n i32)
    (loop $l
      (array.init_elem $anys $e (local.get $a) (i32.const 0) (i32.const 0) (i32.const 16))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
