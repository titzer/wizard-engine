(module
  (func $main (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (local $cnt i32)
    (local.set $cnt (i32.const 5))
    (loop $l
        (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
    (call $foo)
  )
  (func $foo (export "foo")
    (local $cnt i32)
    (local.set $cnt (i32.const 20))
    (loop $l
      (block
        (block
          (block
            (block
              (i32.rem_s (local.get $cnt) (i32.const 5))
              (br_table 3 2 1 0)
            )
          )
        )
      )
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	    (br_if $l (local.get $cnt))
    )
  )
)
