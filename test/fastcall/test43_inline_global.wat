;; Fast handler inlines a callee that reads and writes a global.
;; Tests that global access works inside an inlined function within a fast handler.
(module
  (global $g (mut i32) (i32.const 0))
  (func $bump (param $n i32) (result i32)
    global.get $g
    local.get $n
    i32.add
    global.set $g
    global.get $g)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $bump)
  (func (export "main") (result i32)
    i32.const 10
    call $f
    i32.const 10
    i32.ne

    i32.const 5
    call $f
    i32.const 15
    i32.ne
    i32.or)
)
