;; Subtyping: a (ref.null nocont) flows into a (ref null $ct) local.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (result i32)
    (local $x (ref null $ct))
    (local.set $x (ref.null nocont))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
