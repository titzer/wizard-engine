;; Inlined callee inside a fast handler allocates its own locals.
;; Tests that local slot allocation works across the fast-frame / inlined-frame boundary.
(module
  (func $quadratic (param $a i32) (param $b i32) (result i32)
    ;; returns a*a + b*b using a local for a*a
    (local $aa i32)
    local.get $a
    local.get $a
    i32.mul
    local.set $aa
    local.get $aa
    local.get $b
    local.get $b
    i32.mul
    i32.add)
  (func $f (export "fast:f") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $quadratic)
  (func (export "main") (result i32)
    i32.const 3
    i32.const 4
    call $f             ;; 9 + 16 = 25
    i32.const 25
    i32.ne)
)
