;; Subtyping: a (ref.null nocont) flows into a (ref null cont) parameter.
;; nocont <: cont, so this is well-typed.
(module
  (func $consume (param (ref null cont)) (result i32)
    (ref.is_null (local.get 0))
  )

  (func (export "main") (result i32)
    (call $consume (ref.null nocont))
  )
)

(assert_return (invoke "main") (i32.const 1))
