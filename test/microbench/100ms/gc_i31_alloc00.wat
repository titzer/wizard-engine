;; INNER_CALIBRATION = 125
;; Allocates a linked list whose nodes hold an anyref that is alternately an i31 and a reference
;; to a small anyref array of i31s, then traverses it, dispatching on the kind of each value.
(module
  (type $anys (array (mut anyref)))
  (type $node (struct (field $val anyref) (field $next (ref null $node))))
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (drop (call $traverse (call $build (i32.const 12500 (;$INNER_ITERATIONS;)))))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Builds a list of {n} nodes; odd nodes hold an i31 and even nodes an array of two i31s.
  (func $build (param $n i32) (result (ref null $node))
    (local $head (ref null $node))
    (loop $l
      (local.set $head (struct.new $node
        (if (result anyref) (i32.and (local.get $n) (i32.const 1))
          (then (ref.i31 (local.get $n)))
          (else (array.new_fixed $anys 2 (ref.i31 (local.get $n)) (ref.i31 (i32.const 1)))))
        (local.get $head)))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $head)
  )
  ;; Sums the values held by the nodes of the list.
  (func $traverse (param $head (ref null $node)) (result i32)
    (local $acc i32)
    (block $done
      (loop $l
        (br_if $done (ref.is_null (local.get $head)))
        (local.set $acc (i32.add (local.get $acc) (call $value (struct.get $node $val (local.get $head)))))
        (local.set $head (struct.get $node $next (local.get $head)))
        (br $l)
      )
    )
    (local.get $acc)
  )
  ;; The value of an i31, or the sum of the i31s in an $anys array.
  (func $value (param $r anyref) (result i32)
    (local $a (ref $anys))
    (block $anys (result (ref $anys))
      (block $i31 (result (ref i31))
        (br_on_cast $i31 anyref (ref i31) (local.get $r))
        (br_on_cast $anys anyref (ref $anys))
        (drop)
        (return (i32.const 0))
      )
      (return (i31.get_s))
    )
    (local.set $a)
    (i32.add
      (i31.get_s (ref.cast (ref i31) (array.get $anys (local.get $a) (i32.const 0))))
      (i31.get_s (ref.cast (ref i31) (array.get $anys (local.get $a) (i32.const 1)))))
  )
)
