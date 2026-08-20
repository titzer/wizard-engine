;; flags=4 elem (ref null func) vs externref table: Wizard accepts, reference rejects.
;; See bin:elements1.
(module
  (table 0 externref)
  (elem (i32.const 0) funcref)
)
