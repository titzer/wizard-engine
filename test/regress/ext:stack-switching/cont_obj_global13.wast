;; Test: reuse global slot after consuming previous continuation
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $ret21 (result i32) (i32.const 21))
  (elem declare func $ret21)

  (func (export "main") (result i32)
    ;; First use
    (global.set $g (cont.new $c1 (ref.func $ret21)))
    (drop (resume $c1 (global.get $g)))
    ;; Reuse same global slot with new continuation
    (global.set $g (cont.new $c1 (ref.func $ret21)))
    (resume $c1 (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 21))
