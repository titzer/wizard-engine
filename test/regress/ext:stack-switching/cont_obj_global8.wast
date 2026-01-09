;; Test: resume after cont.bind consumed the global traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $double (param i32) (result i32)
    (i32.mul (local.get 0) (i32.const 2))
  )
  (elem declare func $double)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $double)))
    ;; cont.bind consumes the continuation
    (drop (resume $c2 (cont.bind $c1 $c2 (i32.const 21) (global.get $g))))
    ;; resume on consumed continuation should trap
    (resume $c1 (i32.const 10) (global.get $g))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
