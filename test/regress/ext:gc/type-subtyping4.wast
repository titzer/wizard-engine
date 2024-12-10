(module
  (rec (type $f1 (sub (func))) (type $s1 (sub (struct (field (ref $f1))))))
  (rec (type $f2 (sub (func))) (type $s2 (sub (struct (field (ref $f2))))))
  (rec
    (type $g2 (sub $f2 (func)))
    (type (sub $s2 (struct (field (ref $f1) (ref $f2) (ref $f1) (ref $f2) (ref $g2)))))
  )
  (func (export "g") (type $g2))
)
(register "M4")
