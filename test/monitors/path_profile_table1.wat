;; A br_table with only a default label, which is an unconditional branch.
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L0
      (br_table $L0 (local.get $x))
    )
    (i32.const 1))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 99))))
)
