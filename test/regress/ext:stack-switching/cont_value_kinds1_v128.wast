;; Test: continuation returning v128
(module
  (type $f (func (result v128)))
  (type $c (cont $f))

  (func $ret (result v128) (v128.const i32x4 1 2 3 4))
  (elem declare func $ret)

  (func (export "main") (result v128)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (v128.const i32x4 1 2 3 4))
