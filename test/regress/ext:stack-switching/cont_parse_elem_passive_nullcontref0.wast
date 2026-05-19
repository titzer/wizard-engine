;; A passive element segment whose type is `(ref null nocont)`, with no
;; table declaration in the module. Tests that NULLCONTREF is accepted as a
;; reftype in the element segment parser path (independent of any table).
(module
  (elem (ref null nocont) (ref.null nocont))
  (func (export "main") (result i32) (i32.const 0))
)

(assert_return (invoke "main") (i32.const 0))
