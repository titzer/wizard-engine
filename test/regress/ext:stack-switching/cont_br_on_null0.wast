;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (func $smol (result i32) (return (i32.const 42)))
  (elem declare func $smol)
  
  (table $table 2 (ref null $c1))
  (func (export "init")
    (table.set (i32.const 1) (cont.new $c1 (ref.func $smol)))
  )

  (func (export "main") (param $i i32) (result i32)
    (block $b
      (br_on_null $b (table.get $table (local.get $i)))
      (resume $c1)
      (return)
    )
    (i32.const 100)
  )
)

(invoke "init")

(assert_return (invoke "main" (i32.const 0)) (i32.const 100))
(assert_return (invoke "main" (i32.const 1)) (i32.const 42))
