;; Fast handler with inline-max-depth=3: A->B->C->D all inlined.
;; Tests that a chain of three inlined calls works inside a fast-compiled function.
(module
  (func $add1 (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $add2 (param i32) (result i32)
    local.get 0
    call $add1
    call $add1)
  (func $add4 (param i32) (result i32)
    local.get 0
    call $add2
    call $add2)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $add4)
  (func (export "main") (result i32)
    i32.const 10
    call $f     ;; 10 + 4 = 14
    i32.const 14
    i32.ne)
)
