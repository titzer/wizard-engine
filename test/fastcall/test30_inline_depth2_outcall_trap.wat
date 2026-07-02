;; Fast handler inlines $mid which inlines $inner, which makes an out-call to $trap.
;; Two inlined frames must be reconstructed above the fast handler frame.
(module
  (func $trap (param i32) (result i32)
    unreachable)
  (func $inner (param i32) (result i32)
    local.get 0
    call $trap)
  (func $mid (param i32) (result i32)
    local.get 0
    call $inner)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $mid)
  (func (export "main") (result i32)
    i32.const 3
    call $f
    drop
    i32.const 0)
)
