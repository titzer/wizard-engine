;; Test: resume after cont.bind consumed the local traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $double (param i32) (result i32)
    (i32.mul (local.get 0) (i32.const 2))
  )
  (elem declare func $double)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $double)))
    ;; cont.bind consumes the continuation
    (drop (resume $c2 (cont.bind $c1 $c2 (i32.const 21) (local.get $c))))
    ;; resume on consumed continuation should trap
    (resume $c1 (i32.const 10) (local.get $c))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
