(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32)))
  (type $cb (cont $fb))
  (tag $fetch (result i32))
  
  (func $func_b (result i32)
    (suspend $fetch)
  )
  (elem declare func $func_b)

  (func $func_a (result i32)
    (i32.const 10)
    (block (result (ref null $cb))
      (resume $c (on $fetch 0) (cont.new $c (ref.func $func_b)))
      (return (i32.const 101))
    )
    (resume $cb)
  )
  (elem declare func $func_a)
  (func (export "main") (result i32)
    (i32.const 20)
    (block (result (ref null $cb))
      (resume $c (on $fetch 0) (cont.new $c (ref.func $func_a)))
      (return (i32.const 202))
    )
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 202))
