;; INNER_CALIBRATION = 0.79
;; Binary trees of structs: building a tree of depth 8 (255 nodes) and summing one recursively.
(module
  (type $node (struct (field (ref null $node)) (field (ref null $node)) (field i32)))
  (func $main (export "main")
    (local $y i32)
    (local $t (ref $node))
    (local.set $t (call $build (i32.const 8)))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $build_n (i32.const 79 (;$INNER_ITERATIONS;)))
      (drop (call $sum_n (local.get $t) (i32.const 79 (;$INNER_ITERATIONS;))))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $build (param $depth i32) (result (ref $node))
    (if (result (ref $node)) (i32.le_s (local.get $depth) (i32.const 1))
      (then (struct.new $node (ref.null $node) (ref.null $node) (local.get $depth)))
      (else
        (struct.new $node
          (call $build (i32.sub (local.get $depth) (i32.const 1)))
          (call $build (i32.sub (local.get $depth) (i32.const 1)))
          (local.get $depth)))))
  (func $build_n (param $n i32)
    (loop $l
      (drop (call $build (i32.const 8)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $sum (param $t (ref null $node)) (result i32)
    (if (result i32) (ref.is_null (local.get $t))
      (then (i32.const 0))
      (else
        (i32.add
          (struct.get $node 2 (local.get $t))
          (i32.add
            (call $sum (struct.get $node 0 (local.get $t)))
            (call $sum (struct.get $node 1 (local.get $t))))))))
  (func $sum_n (param $t (ref $node)) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (call $sum (local.get $t))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
)
