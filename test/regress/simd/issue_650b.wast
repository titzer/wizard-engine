(module
  (func (export "main") (result i32)
    (local $v v128)
    v128.const i16x8 0 0 0 0 0 -1000 0 0                  ;; lane 5 = -1000
    local.set $v
    local.get $v  local.get $v  i16x8.ne  drop            ;; result discarded
    local.get $v  i16x8.extract_lane_s 5))                ;; return local back

(assert_return (invoke "main") (i32.const -1000))
