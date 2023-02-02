(module
  (func $main (export "main")
    (local $cnt i32)
    (local.set $cnt (i32.const 5))
    (loop $l
        (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
  )
  (func $start (export "_start")
    (local $cnt i32)
    (local.set $cnt (i32.const 5))
    (loop $l
        (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
  )
)
