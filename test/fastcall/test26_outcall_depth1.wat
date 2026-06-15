;; Fast handler with inline-max-depth=1: $f inlines $mid, but $mid's call to $leaf
;; exceeds the depth limit and becomes an out-call with frame reconstruction.
;; This exercises withReconstructedInlinedFrames inside a fast context.
(module
  (func $leaf (param i32) (result i32)
    local.get 0
    i32.const 10
    i32.add)
  (func $mid (param i32) (result i32)
    local.get 0
    call $leaf)         ;; out-call: exceeds depth=1 when inlined inside $f
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $mid)          ;; $mid inlined at depth 1
  (func (export "main") (result i32)
    i32.const 5
    call $f             ;; 5+10 = 15
    i32.const 15
    i32.ne)
)
