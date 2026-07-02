;; Fast function adds two i32 parameters.
(module
  (func $add (export "fast:add") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (export "main") (result i32)
    i32.const 3
    i32.const 4
    call $add
    i32.const 7
    i32.ne)
)
