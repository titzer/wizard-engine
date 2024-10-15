(module
;;  (type $f1 (func (result i32)))
;;  (type $c1 (cont $f1))

  (type $f2 (func (param i64) (result i32)))
  (type $c2 (cont $f2))

  (type $f3 (func (param i32 i64) (result i32)))
  (type $c3 (cont $f3))

  (func $sub (param i32 i64) (result i32) (i32.sub (local.get 0) (i32.wrap_i64 (local.get 1))))
  (elem declare func $sub)

  (func (export "main") (param i32 i64) (result i32)
    (resume $c2
      (local.get 1)
      (cont.bind $c3 $c2
        (local.get 0)
        (cont.new $c3 (ref.func $sub))))
  )
)

(assert_return (invoke "main" (i32.const 22) (i64.const 44)) (i32.const -22))
(assert_return (invoke "main" (i32.const -444) (i64.const 111)) (i32.const -555))

