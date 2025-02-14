(module
  (func (export "nulls-to-nullable-tops") (result i32)
    (ref.test anyref (ref.null any))
    (ref.test anyref (ref.null none))
    i32.and
    (ref.test externref (ref.null extern))
    i32.and
    (ref.test externref (ref.null noextern))
    i32.and
    (ref.test funcref (ref.null func))
    i32.and
    (ref.test funcref (ref.null nofunc))
    i32.and
  )
)

(assert_return (invoke "nulls-to-nullable-tops") (i32.const 1))
