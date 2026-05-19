;; Read a default-init slot from a `(ref null nocont)` table and `resume`
;; it as a concrete continuation. By subtyping (nocont <: $ct), the operand
;; is well-typed for `resume $ct`; at runtime the null trips the null-deref
;; check. Tests NULLCONTREF as a table elem type combined with downstream
;; resume integration.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (table $t 1 (ref null nocont))

  (func (export "main")
    (resume $ct (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "null continuation")
