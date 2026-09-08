;; INNER_CALIBRATION = 159
;; ref.test: type tests against a struct type at different depths of a four-level hierarchy,
;; succeeding and failing.
(module
  (type $a (sub (struct (field i32))))
  (type $b (sub $a (struct (field i32))))
  (type $c (sub $b (struct (field i32))))
  (type $d (sub $c (struct (field i32))))
  (func $main (export "main")
    (local $y i32)
    (local $oa (ref $a))
    (local $od (ref $d))
    (local.set $oa (struct.new $a (i32.const 1)))
    (local.set $od (struct.new $d (i32.const 4)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (drop (call $test_a (local.get $oa) (i32.const 15900 (;$INNER_ITERATIONS;))))
      (drop (call $test_a (local.get $od) (i32.const 15900 (;$INNER_ITERATIONS;))))
      (drop (call $test_d (local.get $oa) (i32.const 15900 (;$INNER_ITERATIONS;))))
      (drop (call $test_a (ref.i31 (i32.const 5)) (i32.const 15900 (;$INNER_ITERATIONS;))))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Test against the root type; succeeds for an $a (exact) and for a $d (depth 3).
  (func $test_a (param $v anyref) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (ref.test (ref $a) (local.get $v))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  ;; Test against the deepest type; fails for an $a.
  (func $test_d (param $v anyref) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (ref.test (ref $d) (local.get $v))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
)
