;; A br_table where every index taken goes to the default, including out-of-range and negative ones.
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L2
      (block $L1
        (block $L0
          (br_table $L0 $L1 $L2 (local.get $x))
        )
        (return (i32.const 1))
      )
      (return (i32.const 2))
    )
    (i32.const 3))
  (func (export "main")
    (drop (call $f (i32.const 2)))
    (drop (call $f (i32.const 3)))
    (drop (call $f (i32.const 100)))
    (drop (call $f (i32.const -1))))
)
