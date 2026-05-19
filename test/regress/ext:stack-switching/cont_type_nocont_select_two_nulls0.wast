;; select between two ref.null nocont returns null regardless of condition.
(module
  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (select (result (ref null nocont))
        (ref.null nocont) (ref.null nocont) (local.get $cond)))
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1)) (i32.const 1))
