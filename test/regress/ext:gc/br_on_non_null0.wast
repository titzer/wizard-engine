;; https://github.com/WebAssembly/gc/issues/516
(assert_invalid
  (module
    (type $t (func))
    (func $f (param (ref null $t)) (result funcref) (local.get 0))
    (func (param funcref) (result funcref funcref)
      (ref.null $t)
      (local.get 0)
      (br_on_non_null 0)  ;; only leaves a funcref on the stack
      (call $f)
      (local.get 0)
    )
  )
  "type mismatch"
)
