(module
  (func $f (export "f") (param $x i32)
    (block $L1
      (block $L0
        (br_table $L0 $L0 $L1 $L0 $L1 (local.get $x))
      )
      (return)
    )
    (return)
  )
  (func (export "main")
    (call $f (i32.const 0))
    (call $f (i32.const 1))
    (call $f (i32.const 2))
    (call $f (i32.const 3))
    (call $f (i32.const 4)))
)
