;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (func $smol (param i32))
  (elem declare func $smol)

  (func (export "func_a")
    (ref.as_non_null (ref.null $c1))
    (drop)
  )

  (func (export "func_b")
    (ref.as_non_null (cont.new $c1 (ref.func $smol)))
    (drop)
  )
)

(assert_trap (invoke "func_a") "null reference")
(assert_return (invoke "func_b"))
