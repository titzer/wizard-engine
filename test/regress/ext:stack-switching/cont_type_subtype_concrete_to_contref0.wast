;; Subtyping: a (cont.new $ct ...) result flows into a (ref null cont) result.
;; Already exists in cont_new2.wast/cont_new_host0.wast but this is a focused
;; minimal version.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func $alloc (result (ref null cont))
    (cont.new $ct (ref.func $f))
  )

  (func (export "main") (result i32)
    (ref.is_null (call $alloc))
  )
)

(assert_return (invoke "main") (i32.const 0))
