;; INNER_CALIBRATION = 45
;; Struct fields of type anyref/eqref holding a mix of i31s and references to another struct:
;; reading dispatches on i31 vs. reference, and writing alternates between the two.
(module
  (type $leaf (struct (field $v i32)))
  (type $s (struct
    (field $a (mut anyref))   ;; an i31
    (field $b (mut anyref))   ;; a $leaf
    (field $c (mut eqref))    ;; an i31
    (field $d (mut eqref))    ;; a $leaf
  ))
  (func $main (export "main")
    (local $y i32)
    (local $o (ref $s))
    (local.set $o (struct.new $s
      (ref.i31 (i32.const 1))
      (struct.new $leaf (i32.const 2))
      (ref.i31 (i32.const 3))
      (struct.new $leaf (i32.const 4))))
    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (drop (call $get_i31 (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;))))
      (drop (call $get_leaf (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;))))
      (drop (call $get_mixed (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;))))
      (call $set_mixed (local.get $o) (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; Reads the fields that hold i31s, unboxing them.
  (func $get_i31 (param $o (ref $s)) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (i31.get_s (ref.cast (ref i31) (struct.get $s $a (local.get $o))))))
      (local.set $acc (i32.add (local.get $acc) (i31.get_s (ref.cast (ref i31) (struct.get $s $c (local.get $o))))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  ;; Reads the fields that hold references, casting them to $leaf.
  (func $get_leaf (param $o (ref $s)) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (struct.get $leaf $v (ref.cast (ref $leaf) (struct.get $s $b (local.get $o))))))
      (local.set $acc (i32.add (local.get $acc) (struct.get $leaf $v (ref.cast (ref $leaf) (struct.get $s $d (local.get $o))))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  ;; Reads all four fields, dispatching on whether each holds an i31 or a reference.
  (func $get_mixed (param $o (ref $s)) (param $n i32) (result i32)
    (local $acc i32)
    (loop $l
      (local.set $acc (i32.add (local.get $acc) (call $value (struct.get $s $a (local.get $o)))))
      (local.set $acc (i32.add (local.get $acc) (call $value (struct.get $s $b (local.get $o)))))
      (local.set $acc (i32.add (local.get $acc) (call $value (struct.get $s $c (local.get $o)))))
      (local.set $acc (i32.add (local.get $acc) (call $value (struct.get $s $d (local.get $o)))))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
    (local.get $acc)
  )
  ;; Writes i31s into the reference fields and references into the i31 fields, then swaps back.
  (func $set_mixed (param $o (ref $s)) (param $n i32)
    (local $leaf (ref $leaf))
    (local.set $leaf (struct.new $leaf (i32.const 5)))
    (loop $l
      (struct.set $s $a (local.get $o) (local.get $leaf))
      (struct.set $s $b (local.get $o) (ref.i31 (local.get $n)))
      (struct.set $s $c (local.get $o) (local.get $leaf))
      (struct.set $s $d (local.get $o) (ref.i31 (local.get $n)))
      (struct.set $s $a (local.get $o) (ref.i31 (local.get $n)))
      (struct.set $s $b (local.get $o) (local.get $leaf))
      (struct.set $s $c (local.get $o) (ref.i31 (local.get $n)))
      (struct.set $s $d (local.get $o) (local.get $leaf))
      (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $l)
    )
  )
  ;; The value of an i31, or the field of a $leaf.
  (func $value (param $r anyref) (result i32)
    (block $leaf (result (ref $leaf))
      (block $i31 (result (ref i31))
        (br_on_cast $i31 anyref (ref i31) (local.get $r))
        (br_on_cast $leaf anyref (ref $leaf))
        (drop)
        (return (i32.const 0))
      )
      (return (i31.get_s))
    )
    (struct.get $leaf $v)
  )
)
