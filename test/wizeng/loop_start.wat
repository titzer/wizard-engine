(module
  (func $main (export "main")
    (call $start (i32.const 100))
    (call $start (i32.const 500))
    (call $foo (i32.const 3))
  )
  (func $start (export "_start")
    (param $cnt i32)
    (loop $l
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
  )
  (func $foo
    (param $depth i32)
    (local $cnt i32)
    (loop $l
      (block $b
        (br_if $b (i32.eqz (local.get $depth)))
        (call $foo (i32.const 0))
      )
      (local.set $cnt (i32.add (local.get $cnt) (i32.const 1)))
      (br_if $l (i32.le_u (local.get $cnt) (i32.const 3)))
    )
    (br_if 0 (i32.eqz (local.get $depth)))
    (call $foo (i32.sub (local.get $depth) (i32.const 1)))
  )
)
