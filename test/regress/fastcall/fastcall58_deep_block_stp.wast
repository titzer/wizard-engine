(module
  (func $count_pos (export "fast:count_pos") (param $n i32) (result i32)
    (local $i i32)
    (local $c i32)
    i32.const 0 local.set $i
    i32.const 0 local.set $c
    block $exit loop $top
      local.get $i local.get $n i32.ge_s br_if $exit
      local.get $i i32.const 0 i32.gt_s
      if
        local.get $c i32.const 1 i32.add local.set $c
      end
      local.get $i i32.const 1 i32.add local.set $i
      br $top
    end end
    local.get $c)
  (func (export "main") (result i32)
    (local $n i32)
    (local $acc i32)
    i32.const 1 local.set $n
    i32.const 0 local.set $acc
    block $exit loop $top
      local.get $n call $count_pos
      local.get $acc i32.add local.set $acc
      local.get $n i32.const 1 i32.add local.set $n
      local.get $n i32.const 6 i32.gt_s br_if $exit
      br $top
    end end
    local.get $acc i32.const 15 i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
