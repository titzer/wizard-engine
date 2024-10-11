(module
  (type $f1 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (func $f42 (param i32) (result i32)
    (i32.add (local.get 0) (i32.const 10)))
  (func $cf42 (param i32) (result i32)
        (i32.add
          (resume $c1
            (i32.add (local.get 0) (i32.const 100))
            (cont.new $c1 (ref.func $f42)))
	  (i32.const 1000))
  )
  (elem declare func $f42 $cf42)
  (func (export "main") (param i32) (result i32)
    (resume $c1 (local.get 0) (cont.new $c1 (ref.func $cf42)))
  )
)

(assert_return (invoke "main" (i32.const 4)) (i32.const 1114))
(assert_return (invoke "main" (i32.const 5)) (i32.const 1115))
(assert_return (invoke "main" (i32.const 9)) (i32.const 1119))
