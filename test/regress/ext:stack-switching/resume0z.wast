(module
  (type $fun (func (result i32)))
  (type $cont (cont $fun))
  (elem declare func $g)
  (func $g (result i32) (i32.const 0))
  (func (export "main") (result i32)
    (if (resume $cont (cont.new $cont (ref.func $g)))
      (then
        (return (i32.const 1)))
      (else
        (return (i32.const 2))))
    (unreachable))
)
(assert_return (invoke "main") (i32.const 2))
