(module
  (func (export "main") (result i32)
    (local $v v128)
    v128.const i32x4 0 77777 0 0                          ;; lane 1 = 77777
    local.set $v
    local.get $v  local.get $v  i32x4.ne  drop            ;; result discarded
    local.get $v  i32x4.extract_lane 1))                  ;; return local back

(assert_return (invoke "main") (i32.const 77777))
