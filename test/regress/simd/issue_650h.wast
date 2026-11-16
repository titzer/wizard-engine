(module
  (func (export "main") (result i32)
    (local $v v128)
    v128.const i8x16 0 0 0 0 0 0x9c 0 0 0 0 0 0 0 0 0 0  ;; lane 5 = 0x9c (-100)
    local.set $v
    v128.const i8x16 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
    local.get $v
    i8x16.shuffle 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15  ;; all lanes from first operand
    drop                                                  ;; result discarded
    local.get $v  i8x16.extract_lane_s 5))                ;; return local back

(assert_return (invoke "main") (i32.const -100))
