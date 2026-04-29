;; Simplest possible fast call: function does nothing.
(module
  (func $nop (export "fast:nop"))
  (func (export "main") (result i32)
    call $nop
    i32.const 0)
)
