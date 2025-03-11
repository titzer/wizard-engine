(module

  (import "wizeng" "force_gc" (func $force_gc))
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "putc" (func $putc (param i32)))

  (type $f_v_v (func))
  (type $c_v_v (cont $f_v_v))
  
  (type $f_i_v (func (param i32)))
  (type $c_i_v (cont $f_i_v))

  (table $used 1000 (ref null $c_i_v) (ref.null $c_i_v))
  (table $conts 1000 (ref null $c_v_v) (ref.null $c_v_v))

  (tag $t (param i32))

  (func $add (param i32 i32) (result i32)
    (i32.add (local.get 0) (local.get 1))
  )

  ;; A simple continuation that suspends with its argument
  (func $foo (param $n i32)
    (suspend $t (local.get $n))
    (drop (i32.add (local.get $n) (call $add (local.get $n) (i32.const 115544))))
  )
  
  (elem declare func $foo)
  
  (func $do (param $i i32)
    (call $start_conts (local.get $i))
    (call $force_gc)
    (call $finish_conts (local.get $i))
    (call $force_gc)
  )

  (func $start_conts (param $i i32)
    (local $L (ref null $c_i_v))
    ;; create and resume a bunch of continuations.
    (loop
      (call $puti (local.get $i))
      (call $putc (i32.const 32))
      (local.set $L (cont.new $c_i_v (ref.func $foo)))
      (table.set $used (local.get $i) (local.get $L))
      (block (result i32 (ref null $c_v_v))
        (resume $c_i_v (on $t 0) (local.get $i) (local.get $L))
	(br 1)
      )
      table.set $conts ;; simply record the suspended continuation in the table
      (br_if 0 (local.tee $i (i32.sub (local.get $i) (i32.const 1))))
    )
    (call $putc (i32.const 10))
  )

  (func $finish_conts (param $i i32)
    ;; resume the suspended continuations in the second table.
    (loop
      (resume $c_v_v (table.get $conts (local.get $i)))
      (br_if 0 (local.tee $i (i32.sub (local.get $i) (i32.const 1))))
    )
  )

  (func (export "main") (result i32)
    (call $do (i32.const 1))
    (call $do (i32.const 11))
    (call $do (i32.const 111))
    (call $do (i32.const 999))
    (i32.const 0)
  )

)
