(module
  (func $normalize (export "fast:normalize") (param $x i32) (param $mod i32) (result i32)
    (local $q i32)
    (local $r i32)
    local.get $x
    local.get $mod
    i32.div_u
    local.set $q
    local.get $x
    local.get $mod
    i32.rem_u
    local.set $r
    local.get $q
    local.get $r
    i32.add)
  (func (export "main") (result i32)
    i32.const 17
    i32.const 5
    call $normalize
    i32.const 5
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
