(module
  (func (export "main") (result i32)
    unreachable
    i32.add
  )
)

(assert_trap (invoke "main") "")
