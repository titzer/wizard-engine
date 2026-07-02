;; Fast handler with inline-max-depth=2: A->B->C all inlined into the handler.
;; Tests that a chain of two inlined calls works inside a fast-compiled function.
(module
  (func $add1 (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $add2 (param i32) (result i32)
    local.get 0
    call $add1
    call $add1)         ;; +2 total; both $add1 calls inlined at depth 2
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $add2)         ;; $add2 inlined at depth 1
  (func (export "main") (result i32)
    i32.const 10
    call $f             ;; 10+2 = 12
    i32.const 12
    i32.ne)
)
