(module
  (func $main (export "_start")
    (local $y i32)
    (local.set $y (i32.const 2))
    (loop $l
      (call $foo)
      (call $bar)
      (call $baz)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $foo
    nop
    nop
    nop
  )
  (func $bar
    (call $baz)
    nop
    nop
    nop
  )
  (func $baz
    nop
    nop
    nop
    nop
  )
)
