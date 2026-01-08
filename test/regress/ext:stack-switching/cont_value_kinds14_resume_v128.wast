;; Test: resume with v128 argument
(module
  (type $f (func (param v128) (result v128)))
  (type $c (cont $f))

  (func $negate (param v128) (result v128)
    (i32x4.neg (local.get 0))
  )
  (elem declare func $negate)

  (func (export "main") (result v128)
    (resume $c (v128.const i32x4 1 -2 3 -4) (cont.new $c (ref.func $negate)))
  )
)

(assert_return (invoke "main") (v128.const i32x4 -1 2 -3 4))
