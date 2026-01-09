;; Test: cont.bind with v128 argument
(module
  (type $f1 (func (param v128) (result v128)))
  (type $f2 (func (result v128)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $double_lanes (param v128) (result v128)
    (i32x4.add (local.get 0) (local.get 0))
  )
  (elem declare func $double_lanes)

  (func (export "main") (result v128)
    (resume $c2 (cont.bind $c1 $c2 (v128.const i32x4 1 2 3 4) (cont.new $c1 (ref.func $double_lanes))))
  )
)

(assert_return (invoke "main") (v128.const i32x4 2 4 6 8))
