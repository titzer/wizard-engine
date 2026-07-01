(module
  (func $dispatch (export "fast:dispatch") (param $n i32) (result i32)
    (block $b2
      (block $b1
        (block $b0
          local.get $n
          br_table $b0 $b1 $b2 $b2)
        i32.const 10 return)
      i32.const 20 return)
    i32.const 30)
  (func (export "main") (result i32)
    (local $i i32)
    (local $acc i32)
    i32.const 0 local.set $i
    i32.const 0 local.set $acc
    block $exit loop $top
      local.get $i i32.const 3 i32.rem_u
      call $dispatch
      local.get $acc i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      local.get $i i32.const 6 i32.ge_s br_if $exit
      br $top
    end end
    local.get $acc i32.const 120 i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
