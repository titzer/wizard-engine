;; Fast function called repeatedly from a loop in the caller.
(module
  (func $inc (export "fast:inc") (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func (export "main") (result i32)
    (local $i i32)
    (local $n i32)
    i32.const 1000
    local.set $n
    block $break
      loop $cont
        local.get $i
        local.get $n
        i32.ge_s
        br_if $break
        local.get $i
        call $inc
        local.set $i
        br $cont
      end
    end
    local.get $i
    i32.const 1000
    i32.ne)
)
