;; https://github.com/WebAssembly/gc/issues/516
;; Tests that validators are correctly doing
;;
;;     pop_operands(label_types)
;;     push_operands(label_types)
;;
;; for validating br_on_null, rather than incorrectly doing either
;;
;;     push_operands(pop_operands(label_types))
;;
;; or just inspecting the types on the stack without any pushing or
;; popping, neither of which handle subtyping correctly.
(assert_invalid
  (module
    (type $t (func))
    (func $f (param (ref null $t)) (result funcref) (local.get 0))
    (func (param funcref) (result funcref)
      (ref.null $t)
      (local.get 0)
      (br_on_null 0)  ;; only leaves two funcref's on the stack
      (drop)
      (call $f)
    )
  )
  "type mismatch"
)
