;; Two different backedges to the same loop header, taken alternately.
(module
  (func $two (export "two") (param $n i32) (result i32)
    (local $i i32)
    (block $exit
      (loop $top
        (br_if $exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        ;; backedge A, taken on even $i
        (if (i32.eqz (i32.rem_u (local.get $i) (i32.const 2)))
          (then (br $top)))
        ;; backedge B, taken on odd $i
        (br $top)))
    (local.get $i))
  (func (export "main")
    (drop (call $two (i32.const 0)))
    (drop (call $two (i32.const 5))))
)
