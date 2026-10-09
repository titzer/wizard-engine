(module
  (func $wide_switch (export "wide_switch") (param $x i32)
    (block $L5
      (block $L4
        (block $L3
          (block $L2
            (block $L1
              (block $L0
                (br_table $L0 $L1 $L2 $L3 $L4 $L5 (local.get $x))
              )
              (return)
            )
            (return)
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
    (call $wide_switch (i32.const 0))
    (call $wide_switch (i32.const 1))
    (call $wide_switch (i32.const 2))
    (call $wide_switch (i32.const 3))
    (call $wide_switch (i32.const 4))
    (call $wide_switch (i32.const 5))
    (call $wide_switch (i32.const 6))
    (call $wide_switch (i32.const 7)))
)
