;; br_on_null with a non-null cont does not take the branch; the cont stays
;; on the stack typed (ref $ct) and is consumed by drop.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (result i32)
    (block $on_null
      (br_on_null $on_null (cont.new $ct (ref.func $f)))
      drop                          ;; reached: drop the non-null cont
      (return (i32.const 0))
    )
    (i32.const 1)                   ;; not reached
  )
)

(assert_return (invoke "main") (i32.const 0))
