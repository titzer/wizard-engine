(module
  (func (export "main") (result i64)
    (local $v v128)
    v128.const i64x2 5 -7                                 ;; lane 0 = 5
    local.set $v
    v128.const i64x2 0 0  local.get $v  i64x2.ge_s  drop  ;; result discarded
    local.get $v  i64x2.extract_lane 0))                  ;; return local back

(assert_return (invoke "main") (i64.const 5))
