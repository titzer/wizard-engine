(module
  (func (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (local $cnt i32)
    (local.set $cnt (i32.const 10111))
    (loop $l
        (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	(br_if $l (local.get $cnt))
    )
  )
)
