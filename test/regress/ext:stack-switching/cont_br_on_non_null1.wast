;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (func $smol (result i32) (return (i32.const 42)))
  (elem declare func $smol)

  (func (export "main") (param $i i32) (result i32)
    (block $b (result (ref null $c1))
      (if (result (ref null $c1)) (i32.eqz (local.get $i))
        (then (ref.null $c1))
        (else (cont.new $c1 (ref.func $smol)))
      )
      (br_on_non_null $b)
      (return (i32.const 100))
    )
    (resume $c1)
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 100))
(assert_return (invoke "main" (i32.const 1)) (i32.const 42))
(assert_return (invoke "main" (i32.const 4200)) (i32.const 42))
