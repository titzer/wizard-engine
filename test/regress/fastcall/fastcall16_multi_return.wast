(module
  (func $divmod (export "fast:divmod") (param i32 i32) (result i32 i32)
    local.get 0
    local.get 1
    i32.div_u
    local.get 0
    local.get 1
    i32.rem_u)
  (func (export "main") (result i32) (local i32)
    i32.const 17
    i32.const 5
    call $divmod
    local.set 0
    i32.const 3
    i32.ne
    local.get 0
    i32.const 2
    i32.ne
    i32.or)
)
(assert_return (invoke "main") (i32.const 0))
