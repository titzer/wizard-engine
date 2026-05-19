;; Pass a (ref.null cont) through a function call as a (ref null cont) param.
;; Exercises the call boundary for an abstract-cont-typed null operand.
(module
  (func $check (param (ref null cont)) (result i32)
    (ref.is_null (local.get 0))
  )

  (func (export "main") (result i32)
    (call $check (ref.null cont))
  )
)

(assert_return (invoke "main") (i32.const 1))
