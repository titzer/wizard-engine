;; INNER_CALIBRATION = 372
;; extern.convert_any and any.convert_extern: round trips of a struct reference and an i31
;; through externref.
(module
  (type $s (struct (field i32)))
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $round_trip (struct.new $s (i32.const 1)) (i32.const 37200 (;$INNER_ITERATIONS;)))
      (call $round_trip (ref.i31 (i32.const 2)) (i32.const 37200 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $round_trip (param $v anyref) (param $n i32)
    (loop $l
      (local.set $v (any.convert_extern (extern.convert_any (local.get $v))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
)
