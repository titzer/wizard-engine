(module
  (func (export "nested-br_table-value") (param i32) (result i32)
    (i32.add
      (i32.const 1)
      (block (result i32)
        (br_table 0
          (block (result i32)
            (drop (br_if 1 (i32.const 8) (local.get 0))) (i32.const 4)
          )
          (i32.const 1)
        )
        (i32.const 16)
      )
    )
  )
)
(assert_return (invoke "nested-br_table-value" (i32.const 0x0)) (i32.const 0x5))
(assert_return (invoke "nested-br_table-value" (i32.const 0x1)) (i32.const 0x9))
