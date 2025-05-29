(module
  
  (type $f_v_v (func))
  (type $c_v_v (cont $f_v_v))

  (func $foo)
  (elem declare func $foo)
  
  (func (export "main") (param $i i32) (result i32)
    (local $L (ref null $c_v_v))
    (block (result i32 (ref null $c_v_v))
        (local.set $L (cont.new $c_v_v (ref.func $foo)))
        (local.get $i)
        (resume $c_v_v (local.get $L))
        ;; (unreachable)
        (ref.null $c_v_v)
    )
    (return (i32.const 42))
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 42))
