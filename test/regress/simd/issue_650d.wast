(module
  (func (export "main") (result i64)
    (local $v v128)
    v128.const i64x2 0 0x123456789                        ;; lane 1 = 0x123456789
    local.set $v
    local.get $v  local.get $v  i64x2.ne  drop            ;; result discarded
    local.get $v  i64x2.extract_lane 1))                  ;; return local back

(assert_return (invoke "main") (i64.const 0x123456789))
