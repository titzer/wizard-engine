;; Check that tables can have a specific continuation type
(module
  (type $f (func))
  (type $c (cont $f))
  (table 0 (ref null $c))
)
