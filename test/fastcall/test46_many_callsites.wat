;; Stress test: single interpreter caller with many distinct fast-call sites.
;; The same fast function is called from 100 different call sites (not a loop),
;; stressing the interpreter's dispatch and r_ip bookkeeping across many
;; sequential fast calls in one large interpreter function body.
(module
  (func $inc (export "fast:inc") (param i32) (result i32)
    local.get 0 i32.const 1 i32.add)
  (func (export "main") (result i32)
    (local $x i32)
    i32.const 0 local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x call $inc local.set $x
    local.get $x i32.const 100 i32.ne)
)
