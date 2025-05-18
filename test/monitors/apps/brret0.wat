(module
  (func $main (export "main")
    (call $do)
  )
  (func $start (export "_start")
    (call $do)
  )
  (func $do
  	(call $foo)
  	(call $foo)
  	(call $foo)
  	(call $bar)
  	(call $bar)
  	(call $bar)
  	(call $baz)
  	(call $baz)
  	(call $baz)
  )
  (func $foo
    (return)
  )
  (func $bar
    (br 0)
  )
  (func $baz
  )
)
