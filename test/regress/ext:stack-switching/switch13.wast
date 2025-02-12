(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (type $f2 (func (param (ref null $c1))))
  (type $c2 (cont $f2))
  (tag $e)
  (func (export "main")
    (switch $c2 $e (ref.null $c2))
  )
)

;; continuation verification happens before switch handler lookup
(assert_trap (invoke "main") "null continuation")
