(module
  (type $f1 (func (result f64)))
  (type $c1 (cont $f1))
  (type $f2 (func (param (ref null $c1)) (result f64)))
  (type $c2 (cont $f2))
  (tag $e (result f64))

  (func $fn_1 (param (ref null $c1)) (result f64)
    (resume $c1 (local.get 0))
    (return)
  )
  (elem declare func $fn_1)

  (func $fn_2 (result f64)
    (cont.new $c2 (ref.func $fn_1))
    (switch $c2 $e)
    (f64.const 127.55)
  )
  (elem declare func $fn_2)

  (func (export "main") (result f64)
    (cont.new $c1 (ref.func $fn_2))
    (resume $c1 (on $e switch))
  )
)

(assert_return (invoke "main") (f64.const 127.55))
