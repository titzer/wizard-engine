;; Fast function that traps: verifies trap propagates correctly out of fast handler.
(module
  (func $boom (export "fast:boom")
    unreachable)
  (func (export "main") (result i32)
    call $boom
    i32.const 0)
)
