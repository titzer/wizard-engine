(module
  (func (export "null-to-nullable-i31") (result i32)
    (ref.test i31ref (ref.null none))
    (ref.test i31ref (ref.null i31))
    i32.and
    (ref.test i31ref (ref.null struct))
    i32.and
    (ref.test i31ref (ref.null array))
    i32.and
    (ref.test i31ref (ref.null eq))
    i32.and
    (ref.test i31ref (ref.null any))
    i32.and
  )
)

(assert_return (invoke "null-to-nullable-i31") (i32.const 1))
