;; Fast handler inlines a callee that contains a loop.
;; Tests that backward branches inside an inlined function within a fast handler
;; work correctly (loop/br_if in inlined context).
(module
  (func $count_down (param $n i32) (result i32)
    ;; returns the count of iterations: loops from n down to 0
    (local $acc i32)
    block $break
      loop $cont
        local.get $n
        i32.const 0
        i32.le_s
        br_if $break
        local.get $acc
        i32.const 1
        i32.add
        local.set $acc
        local.get $n
        i32.const 1
        i32.sub
        local.set $n
        br $cont
      end
    end
    local.get $acc)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $count_down)
  (func (export "main") (result i32)
    i32.const 5
    call $f
    i32.const 5
    i32.ne)
)
