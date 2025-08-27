;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (func $smol (param i32))
  (elem declare func $smol)

  (func (export "func_a") (result i32)
    (ref.is_null (ref.null $c1))
  )

  (func (export "func_b") (result i32)
    (ref.is_null (cont.new $c1 (ref.func $smol)))
  )
)

(assert_return (invoke "func_a") (i32.const 1))
(assert_return (invoke "func_b") (i32.const 0))
