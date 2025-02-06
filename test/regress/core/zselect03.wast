(module
    (type (;0;) (func (result i32)))
    (func (;0;) (type 0) (result i32)
      (local i32)
      i32.const 0
      i32.const 1
      i32.const 0
      i32.const 1
      i32.const 4
      i32.const 0
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
