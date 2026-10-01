;; A br_table in a loop header with two labels naming that loop: two self-loop arms on one block.
(module
  (func $ms (export "ms") (param $n i32) (result i32)
    (local $i i32)
    (block $out
      (loop $L
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_table $L $L $out
          (select (i32.const 2) (i32.rem_u (local.get $i) (i32.const 2))
                  (i32.ge_u (local.get $i) (local.get $n))))))
    (local.get $i))
  (func (export "main")
    (drop (call $ms (i32.const 6))))
)
