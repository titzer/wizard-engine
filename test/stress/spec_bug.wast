(module
  (table $conts 1000 contref (ref.null cont))
  
  (type $f1 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (tag $t1)
  
  ;; recurse N times deep, then suspend
  (func $foo (param i32) (result i32)
    (if (result i32) (i32.eqz (local.get 0))
      (then
        (suspend $t1)
        (i32.const 0)
      )
      (else
        (call $foo (i32.sub (local.get 0) (i32.const 1)))
      )
    )
  )
  (elem declare func $foo)
  (func (export "main") (param i32 i32) (result i32)
    (loop
      (block (result contref)
        (resume $c1 (on $t1 0)
	  (i32.const 5 (;FRAMES;))
          (cont.new $c1 (ref.func $foo)))
      )
      drop
    )
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 0))
