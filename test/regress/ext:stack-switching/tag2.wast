;; Test that tags can use all reference types and simple GC types
(module
  (tag $e (param anyref) (result anyref))
  (tag $f (param externref) (result externref))
  (tag $g (param funcref) (result funcref))
  (tag $h (param structref) (result structref))
  (tag $i (param arrayref) (result arrayref))
  (tag $j (param i31ref) (result i31ref))
)
