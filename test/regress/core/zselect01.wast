(module
    (type (;0;) (func (result i32)))
    (memory (;0;) 1)
    (func (;0;) (type 0) (result i32)
      (local i32 i64 f32 f64 i32)
      i32.const 0
      i32.const 0
      i32.shr_s
      i32.const 1
      i32.const 378
      i32.load8_s offset=52
      i32.const 1
      i32.const 824
      local.tee 0
      local.get 0
      i32.eqz
      select
      i32.div_s
      local.tee 0
      local.get 0
      i32.eqz
      select
      i32.add)
    (export "main" (func 0))
)

(assert_return (invoke "main") (i32.const 1))
