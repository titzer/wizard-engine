;; Fast function with a loop: sum 1..n.
(module
  (func $sum (export "fast:sum") (param $n i32) (result i32)
    (local $i i32)
    (local $acc i32)
    i32.const 1
    local.set $i
    block $break
      loop $cont
        local.get $i
        local.get $n
        i32.gt_s
        br_if $break
        local.get $acc
        local.get $i
        i32.add
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $cont
      end
    end
    local.get $acc)
  (func (export "main") (result i32)
    i32.const 10      ;; 1+2+...+10 = 55
    call $sum
    i32.const 55
    i32.ne)
)
