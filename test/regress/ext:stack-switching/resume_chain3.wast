(module
  (type $f1 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (func $foo (param i32) (result i32)
    (if (result i32) (i32.eqz (local.get 0))
      (then (i32.const 0))
      (else
        (i32.add
          (i32.const 1)
          (resume $c1
            (i32.sub (local.get 0) (i32.const 1))
            (cont.new $c1 (ref.func $foo))
          )
        )
      )
    )
  )
  (elem declare func $foo)
  (func (export "main") (param i32) (result i32)
    (resume $c1 (local.get 0) (cont.new $c1 (ref.func $foo)))
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1)) (i32.const 1))
(assert_return (invoke "main" (i32.const 2)) (i32.const 2))
(assert_return (invoke "main" (i32.const 5)) (i32.const 5))
(assert_return (invoke "main" (i32.const 42)) (i32.const 42))
(assert_return (invoke "main" (i32.const 128)) (i32.const 128))
