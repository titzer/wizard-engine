(module
  
  (type $f_v_v (func))
  (type $c_v_v (cont $f_v_v))
  
  (type $f_i_v (func (param i32)))
  (type $c_i_v (cont $f_i_v))

  (table $used 1000 (ref null $c_i_v) (ref.null $c_i_v))
  (table $conts 1000 (ref null $c_v_v) (ref.null $c_v_v))

  (tag $t (param i32))

  ;; A simple continuation that suspends with its argument
  (func $foo (param $n i32)
    (suspend $t (local.get $n))
  )
  
  (elem declare func $foo)
  (func (export "main") (param $i i32) (result i32)
    (call $start_conts (local.get $i))
    (i32.const 42)
  )

  (func $resume (param i32 (ref null $c_i_v)) (result i32 (ref null $c_v_v))
    (resume $c_i_v (on $t 0) (local.get 0) (local.get 1))
    unreachable
  )

  (func $start_conts (param $i i32)
    (local $L (ref null $c_i_v))
    ;; create and resume a bunch of continuations.
    (loop
      (local.set $L (cont.new $c_i_v (ref.func $foo)))
      (table.set $used (local.get $i) (local.get $L))
      (call $resume (local.get $i) (local.get $L))
      table.set $conts ;; simply record the suspended continuation in the table
      (br_if 0 (local.tee $i (i32.sub (local.get $i) (i32.const 1))))
    )
  )

  (func $finish_conts (param $i i32)
    ;; resume the suspended continuations in the second table.
    (loop
      (resume $c_v_v (table.get $conts (local.get $i)))
      (br_if 0 (local.tee $i (i32.sub (local.get $i) (i32.const 1))))
    )
  )
)

(assert_return (invoke "main" (i32.const 32)) (i32.const 42))
