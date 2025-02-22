(module
  (func (export "main") (result exnref)
    (ref.null exn)
  )
)

(assert_return (invoke "main") (ref.null exn))
