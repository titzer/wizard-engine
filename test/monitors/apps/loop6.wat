(module
  (func $main (export "main")
    (call $start (i32.const 1000))
  )
  (func $start (export "_start")
    (param $cnt i32)
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    
    (loop $l
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
  )
)
