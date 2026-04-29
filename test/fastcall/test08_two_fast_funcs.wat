;; Two distinct fast functions called in the same program.
(module
  (func $mul (export "fast:mul") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.mul)
  (func $add (export "fast:add") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (export "main") (result i32)
    i32.const 3
    i32.const 4
    call $mul         ;; 12
    i32.const 5
    i32.const 6
    call $add         ;; 11
    i32.add           ;; 23
    i32.const 23
    i32.ne)
)
