(module
  (memory 1)

  (func $main (export "main")
    (call $start)
  )

  (func $start (export "start")
    (local $cnt i32)
    (local.set $cnt (i32.const 4))
    (loop $l
      (drop (i32.load (i32.add (i32.const 123) (local.get $cnt))))
	  (i32.store (i32.const 1) (i32.add (i32.const 123) (local.get $cnt)))
	  (i32.store (i32.const 1) (i32.add (i32.const 123) (local.get $cnt)))
      (local.tee $cnt (i32.sub (local.get $cnt) (i32.const 1)))
      (drop (memory.grow (i32.const 1)))
      (br_if $l)
    )
  )
)
