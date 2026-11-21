;; A br_table with one label plus the default, which selects by index rather than like a br_if.
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L1
      (block $L0
        (br_table $L0 $L1 (local.get $x))
      )
      (return (i32.const 10))
    )
    (i32.const 20))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 7))))
)
