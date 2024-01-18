(module
  (func (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (local $cnt i32)
    (local $cnt2 i32)
    (local.set $cnt (i32.const 133))
    (loop $l
      (local.set $cnt2 (i32.const 3))
      (loop $l2
        (local.set $cnt2 (i32.sub (local.get $cnt2) (i32.const 1)))
        (br_if $l2 (local.get $cnt2))
      )
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	    (br_if $l (local.get $cnt))
    )
    (local.set $cnt (i32.const 123))
    (loop $l3
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
      (br_if $l3 (local.get $cnt))
    )
  )
  (func $empty
    (loop))
)
