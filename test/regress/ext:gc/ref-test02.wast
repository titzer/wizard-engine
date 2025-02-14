(module
  (func (export "nulls-to-non-nullable-tops") (result i32)
    (ref.test (ref any) (ref.null any))
    (ref.test (ref any) (ref.null none))
    i32.or
    (ref.test (ref extern) (ref.null extern))
    i32.or
    (ref.test (ref extern) (ref.null noextern))
    i32.or
    (ref.test (ref func) (ref.null func))
    i32.or
    (ref.test (ref func) (ref.null nofunc))
    i32.or
  )
)

(assert_return (invoke "nulls-to-non-nullable-tops") (i32.const 0))
