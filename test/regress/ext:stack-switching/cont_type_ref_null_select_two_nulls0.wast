;; select between two ref.null of the same concrete cont type returns null.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (select (result (ref null $ct))
        (ref.null $ct) (ref.null $ct) (local.get $cond)))
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1)) (i32.const 1))
