;; flags=0 elem (ref func) vs table of (ref null 0): Wizard accepts, reference rejects.
;; See bin:elements3, bin:elements4; ok.wast is the same module with a funcref table.
(module
  (type $t (func))
  (import "M" "f" (func $f (type $t)))
  (table 0 (ref null $t))
  (elem (i32.const 0) func $f)
)
