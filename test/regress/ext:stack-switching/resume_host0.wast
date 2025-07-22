;; Check if cont.new produces a non-null reference value
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))

  (func $print (import "spectest" "print_i32") (type $f1))

  (elem declare func $print)

  (func (export "main") (param i32) (result i32)
    (resume $c1 (i32.const 1) (call $alloc (local.get 0)))
    (i32.const 42)
  )
  (func $alloc (param i32) (result (ref null $c1))
      (if (result (ref null $c1)) (local.get 0)
        (then (cont.new $c1 (ref.func $print)))
        (else ref.null $c1)
      )
  )
)

(assert_return (invoke "main" (i32.const 111)) (i32.const 42))
(assert_trap (invoke "main" (i32.const 0)) "null")
