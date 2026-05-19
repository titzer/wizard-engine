;; if/else returning (ref null $ct) — one branch produces a non-null cont,
;; the other ref.null. Exercises SPC block-end merge across kinds.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (if (result (ref null $ct)) (local.get $cond)
        (then (cont.new $ct (ref.func $f)))
        (else (ref.null $ct))))
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 0))
(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
