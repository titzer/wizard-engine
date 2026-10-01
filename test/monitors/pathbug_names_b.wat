;; Second module for pathbug_names_a.wat -- see that file for the defect description.
(module
  (func $zeta (export "zeta") (result i32) (i32.const 2))
  (func (export "main") (drop (call $zeta)))
)
