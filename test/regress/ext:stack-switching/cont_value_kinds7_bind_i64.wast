;; Test: cont.bind with i64 argument
(module
  (type $f1 (func (param i64) (result i64)))
  (type $f2 (func (result i64)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $inc (param i64) (result i64)
    (i64.add (local.get 0) (i64.const 1))
  )
  (elem declare func $inc)

  (func (export "main") (result i64)
    (resume $c2 (cont.bind $c1 $c2 (i64.const 0xFFFFFFFFFFFFFFFF) (cont.new $c1 (ref.func $inc))))
  )
)

(assert_return (invoke "main") (i64.const 0))
