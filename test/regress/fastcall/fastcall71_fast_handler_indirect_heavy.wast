(module
  (type $t_i_i (func (param i32) (result i32)))
  (func $sum_to_n (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    i32.const 1
    local.set $i
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        local.get $acc
        local.get $i
        i32.add
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)
  (func $product_to_n (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    i32.const 1
    local.set $i
    i32.const 1
    local.set $acc
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        local.get $acc
        local.get $i
        i32.mul
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)
  (func $heavy (param $n i32) (result i32)
    (local $s i32) (local $p i32) (local $i i32) (local $acc i32)
    local.get $n
    call $sum_to_n
    local.set $s
    local.get $n
    call $product_to_n
    local.set $p
    i32.const 1
    local.set $i
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        local.get $acc
        local.get $s
        local.get $i
        i32.mul
        local.get $p
        local.get $i
        i32.const 1
        i32.add
        i32.div_s
        i32.add
        i32.add
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)
  (func $invoke (export "fast:invoke") (param $n i32) (result i32)
    local.get $n
    i32.const 0
    call_indirect (type $t_i_i))
  (table (export "table") 1 funcref)
  (elem (i32.const 0) $heavy)
  (func (export "main") (result i32)
    i32.const 4
    call $invoke
    i32.const 130
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
