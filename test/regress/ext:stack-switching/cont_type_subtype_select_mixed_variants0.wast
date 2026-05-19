;; select between (ref.null nocont) and (ref.null cont), result typed
;; (ref null cont). Tests SPC merge across two ref.null instructions
;; whose source heap types differ but unify to (ref null cont).
(module
  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (select (result (ref null cont))
        (ref.null nocont) (ref.null cont) (local.get $cond)))
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1)) (i32.const 1))
