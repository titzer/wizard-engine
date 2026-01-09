;; Test: chained cont.bind with mixed types
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f1 (func (param i32 (ref $point) f64) (result i32)))
  (type $f2 (func (param (ref $point) f64) (result i32)))
  (type $f3 (func (param f64) (result i32)))
  (type $f4 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))
  (type $c4 (cont $f4))

  (func $compute (param i32 (ref $point) f64) (result i32)
    (i32.add
      (i32.add
        (i32.add
          (local.get 0)
          (struct.get $point $x (local.get 1)))
        (struct.get $point $y (local.get 1)))
      (i32.trunc_f64_s (local.get 2)))
  )
  (elem declare func $compute)

  (func (export "main") (result i32)
    ;; 5 + 10 + 12 + 15.9 = 42
    (resume $c4
      (cont.bind $c3 $c4 (f64.const 15.9)
        (cont.bind $c2 $c3 (struct.new $point (i32.const 10) (i32.const 12))
          (cont.bind $c1 $c2 (i32.const 5)
            (cont.new $c1 (ref.func $compute))))))
  )
)

(assert_return (invoke "main") (i32.const 42))
