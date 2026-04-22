(module
  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func (export "single_exported_function") (result i32)
    i32.const 0
  )
)
