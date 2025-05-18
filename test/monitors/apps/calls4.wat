(module
  (type $void (func))
  (table funcref (elem $foo $bar $baz $baz))

  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 3))
    (loop $l
      (call $foo)
      (call $bar)
      (call $baz)
	  (i32.ge_s (local.get $y) (i32.const 1))
	  (if
	  	(then (drop (i32.const 123)))
		(else (drop (i32.const 456)))
	  )
	  (call_indirect (local.get $y))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $foo
  )
  (func $bar
    (call $baz)
  )
  (func $baz
  )
)
