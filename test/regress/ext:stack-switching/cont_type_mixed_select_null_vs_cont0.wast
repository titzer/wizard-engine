;; select between a non-null cont and a null cont.
;; Tests SPC merge of KIND_REF_U64 register and KIND_REF_U64 const-null.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (select (result (ref null $ct))
        (cont.new $ct (ref.func $f))
        (ref.null $ct)
        (local.get $cond)))
  )
)

;; cond=1 picks the non-null cont (left); is_null = 0
(assert_return (invoke "main" (i32.const 1)) (i32.const 0))
;; cond=0 picks the null (right); is_null = 1
(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
