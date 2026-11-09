(module
  (func $demo (export "demo") (param $x i32)
    (block $L3
      (block $L2
        (block $L1
          (block $L0
            (br_table $L0 $L1 $L2 $L3 (local.get $x))
          )
          (return)
        )
        (return)
      )
      (return)
    )
    (return)
  )
  (func (export "main")
    (call $demo (i32.const 0))
    (call $demo (i32.const 1))
    (call $demo (i32.const 2))
    (call $demo (i32.const 3))
    (call $demo (i32.const 4)))
)
