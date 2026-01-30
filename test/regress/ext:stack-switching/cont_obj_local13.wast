;; Test: reuse local slot after consuming previous continuation
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (func $ret21 (result i32) (i32.const 21))
  (elem declare func $ret21)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    ;; First use
    (local.set $c (cont.new $c1 (ref.func $ret21)))
    (drop (resume $c1 (local.get $c)))
    ;; Reuse same local slot with new continuation
    (local.set $c (cont.new $c1 (ref.func $ret21)))
    (resume $c1 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 21))
