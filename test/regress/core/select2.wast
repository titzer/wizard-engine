(module
  (func (export "as-select-last") (result i32)
    (select (i32.const 2) (i32.const 3) (block (result i32) (i32.const 1)))
  )
)
(assert_return (invoke "as-select-last") (i32.const 2))
