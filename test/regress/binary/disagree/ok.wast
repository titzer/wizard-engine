;; Control for elem_type_flags0.wast: funcref table instead, which the reference validates.
;; (Only validation matters here; the link failure on the unresolved import is expected.)
(module
  (type $t (func))
  (import "M" "f" (func $f (type $t)))
  (table 0 funcref)
  (elem (i32.const 0) func $f)
)
