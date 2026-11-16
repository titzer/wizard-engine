(module
  (func (export "main") (result i32)
    (local $v v128)
    v128.const i16x8 1000 2000 3000 4000 5000 6000 7000 8000  ;; lane 5 = 6000
    local.set $v
    local.get $v  i16x8.bitmask  drop                     ;; result discarded
    local.get $v  i16x8.extract_lane_s 5))                ;; return local back

(assert_return (invoke "main") (i32.const 6000))
