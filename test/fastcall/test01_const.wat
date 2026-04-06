;; Simplest case: fast function returns a constant.
(module
  (func $f (export "fast:f") (result i32)
    i32.const 42)
  (func (export "main") (result i32)
    call $f
    i32.const 42
    i32.ne)
)
