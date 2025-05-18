(module
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 1005))
    (loop $l
      (call $foo)
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
