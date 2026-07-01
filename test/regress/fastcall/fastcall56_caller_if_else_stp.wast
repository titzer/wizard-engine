(module
  (func $abs (export "fast:abs") (param i32) (result i32)
    local.get 0
    i32.const 0
    i32.lt_s
    if (result i32)
      i32.const 0
      local.get 0
      i32.sub
    else
      local.get 0
    end)
  (func (export "main") (result i32)
    (local $i i32)
    (local $acc i32)
    i32.const -5 local.set $i
    i32.const 0  local.set $acc
    block $exit loop $top
      local.get $i call $abs
      local.get $acc i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      local.get $i i32.const 6 i32.gt_s br_if $exit
      br $top
    end end
    local.get $acc i32.const 36 i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
