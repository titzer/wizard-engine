;; Test: mixed primitive and reference types together
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f (func (param i32 (ref $point) i64 f64) (result i32)))
  (type $c (cont $f))

  (func $compute (param i32 (ref $point) i64 f64) (result i32)
    ;; i32 + point.x + point.y + i64 + f64
    (i32.add
      (i32.add
        (i32.add
          (i32.add
            (local.get 0)
            (struct.get $point $x (local.get 1)))
          (struct.get $point $y (local.get 1)))
        (i32.wrap_i64 (local.get 2)))
      (i32.trunc_f64_s (local.get 3)))
  )
  (elem declare func $compute)

  (func (export "main") (result i32)
    ;; 5 + 10 + 12 + 7 + 8.9 = 42
    (resume $c
      (i32.const 5)
      (struct.new $point (i32.const 10) (i32.const 12))
      (i64.const 7)
      (f64.const 8.9)
      (cont.new $c (ref.func $compute)))
  )
)

(assert_return (invoke "main") (i32.const 42))
