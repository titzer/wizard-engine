(module
  (func (export "main") (result i32)
    block (result f32)
      i32.const 42
      f32.const 3.14
      br 0
    end
    f32.const 3.14
    f32.eq
  )
)
