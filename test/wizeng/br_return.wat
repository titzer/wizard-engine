(module
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 10))
    (loop $l
      (call $foo)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $foo
    (br 0 (i32.const 1))
    (drop (i32.const 0))
    (drop (i32.const 0))
  )
)
