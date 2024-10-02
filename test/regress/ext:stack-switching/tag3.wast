;; Test that tags can use all complex GC types
(module
  (type $s (struct))
  (type $a (array i32))
  (type $f (func (param i32) (result i32)))

  (tag $e (param (ref $s)) (result (ref $s)))
  (tag $f (param (ref null $s)) (result (ref null $s)))
  (tag $g (param (ref $a)) (result (ref $a)))
  (tag $h (param (ref null $a)) (result (ref null $a)))
  (tag $j (param (ref $f)) (result (ref $f)))
  (tag $k (param (ref null $f)) (result (ref null $f)))
)
