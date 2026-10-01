;; Nested loops, each with its own backedge to its own header.
(module
  (func $nested (export "nested") (param $n i32) (param $m i32) (result i32)
    (local $i i32) (local $j i32) (local $s i32)
    (block $outer_exit
      (loop $outer
        (br_if $outer_exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $j (i32.const 0))
        (block $inner_exit
          (loop $inner
            (br_if $inner_exit (i32.ge_s (local.get $j) (local.get $m)))
            (local.set $s (i32.add (local.get $s) (i32.const 1)))
            (local.set $j (i32.add (local.get $j) (i32.const 1)))
            (br $inner)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $outer)))
    (local.get $s))
  (func (export "main")
    (drop (call $nested (i32.const 3) (i32.const 2))))
)
