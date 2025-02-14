(module
  (rec (type $f1 (sub (func))) (type $s1 (sub (struct (field (ref $f1))))))
  (rec (type $f2 (sub (func))) (type $s2 (sub (struct (field (ref $f2))))))
  (rec
    (type $g1 (sub $f1 (func)))
    (type (sub $s1 (struct (field (ref $f1) (ref $f1) (ref $f2) (ref $f2) (ref $g1)))))
  )
  (rec
    (type $g2 (sub $f2 (func)))
    (type (sub $s2 (struct (field (ref $f1) (ref $f2) (ref $f1) (ref $f2) (ref $g2)))))
  )
  (rec (type $h (sub $g2 (func))) (type (struct)))
  (func $h (type $h)) (elem declare func $h)
  (func (export "run") (result i32 i32)
    (ref.test (ref $f1) (ref.func $h))
    (ref.test (ref $g1) (ref.func $h))
  )
)
(assert_return (invoke "run") (i32.const 1) (i32.const 1))
