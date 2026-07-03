(module
  (func $inc (export "fast:inc") (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func (export "main") (result i32)
    (local $i i32)
    (local $sum i32)
    block $b1
      loop $l1
        local.get $i
        i32.const 3
        i32.ge_s
        br_if $b1
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $l1
      end
    end
    local.get $i
    call $inc
    local.set $i
    block $b2
      loop $l2
        local.get $i
        i32.const 7
        i32.ge_s
        br_if $b2
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $l2
      end
    end
    local.get $i
    i32.const 7
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
