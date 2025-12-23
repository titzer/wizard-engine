(module
  (type $0 (func (result i32)))
  (memory $0 1 1)
  (export "f0" (func 0))
  (func (export "main")
    (type 0)
    (i32.const 10038)
    (i32.const 0)
    (v128.const i32x4 -371_647_179 1_576_118_799 238_232_061 258_091_770)
    (v128.store16_lane 0 offset=1 2)
  )
)

(assert_return (invoke "main") (i32.const 10_038))
