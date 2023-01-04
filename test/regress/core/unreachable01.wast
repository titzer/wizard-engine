(module
  (func (export "main") (result i32)
    (block (result i32)
      unreachable
    )
  )
)

(assert_trap (invoke "main") "")
