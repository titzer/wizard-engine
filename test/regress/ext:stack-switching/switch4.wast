(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (type $f2 (func (param (ref null $c1)) (result i32)))
  (type $c2 (cont $f2))
  (tag $e (result i32))

  (func $fn_1 (param (ref null $c1)) (result i32)
    (i32.const 24)
  )
  (elem declare func $fn_1)

  (func $fn_2 (result i32)
    (cont.new $c2 (ref.func $fn_1))
    (switch $c2 $e)
    (i32.const -1)
  )
  (elem declare func $fn_2)

  (func (export "main") (result i32)
    (cont.new $c1 (ref.func $fn_2))
    (resume $c1 (on $e switch))
  )
)

(assert_return (invoke "main") (i32.const 24))
