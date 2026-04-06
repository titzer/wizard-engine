;; export name holds fast information, we don't modify binary ahead of time

(module
  (func $fast (export "fast:foo") (result i32)
    (i32.const 2)
  )
  (func (export "main") (result i32)
    (call $fast)
  )
)
