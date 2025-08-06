;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (type $f2 (func))
  (type $c2 (cont $f2))
  (func $smol (param i32))
  (elem declare func $smol)
  
  (table $table 2 (ref null $c1))
  (func (export "init")
    (table.set (i32.const 1) (cont.new $c1 (ref.func $smol)))
  )

  (func (export "main") (param $i i32) (result i32)
    (ref.is_null (table.get $table (local.get $i)))
  )
)

(invoke "init")

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1)) (i32.const 0))
