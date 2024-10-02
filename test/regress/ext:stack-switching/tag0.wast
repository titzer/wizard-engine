;; Test a module can define a simple tag
(module
  (tag $e (param i32))
  (tag $f (result i32))
  (tag $g (param i32) (result i32))
  (tag $h (param) (result))
)
