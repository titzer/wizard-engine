;; Fast function takes a parameter and returns it unchanged.
(module
  (func $identity (export "fast:identity") (param i32) (result i32)
    local.get 0)
  (func (export "main") (result i32)
    i32.const 99
    call $identity
    i32.const 99
    i32.ne)
)
