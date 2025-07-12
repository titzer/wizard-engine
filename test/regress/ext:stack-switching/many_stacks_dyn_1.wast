(module
  
  (type $f_v_v (func))
  (type $c_v_v (cont $f_v_v))

  (tag $t)

  ;; A simple continuation that suspends
  (func $foo (suspend $t))

  (elem declare func $foo)
  (func (export "main") (param $i i32) (result i32)
    (loop
      (block (result (ref null $c_v_v))
        (resume $c_v_v (on $t 0) (cont.new $c_v_v (ref.func $foo)))
        (br 1)
      )
      (drop)
      (br_if 0 (local.tee $i (i32.sub (local.get $i) (i32.const 1))))
    )
    (i32.const 42)
  )
)

(assert_return (invoke "main" (i32.const 64)) (i32.const 42))
