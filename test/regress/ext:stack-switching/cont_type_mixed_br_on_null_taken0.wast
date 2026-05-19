;; br_on_null with a null cont takes the branch.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (result i32)
    (block $on_null
      (br_on_null $on_null (ref.null $ct))
      drop                          ;; not reached: would consume non-null
      (return (i32.const 0))
    )
    (i32.const 1)                   ;; reached: branch was taken
  )
)

(assert_return (invoke "main") (i32.const 1))
