(module
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 100000000))
    (loop $l
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l) 
    )
  )
)
