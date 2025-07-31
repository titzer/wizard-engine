(module
  (func (export "main")
    (call $f0)
    (call $f2 (i32.const 3))
  )
  (func $f0
    (local $cnt i32)
    (local $cnt2 i32)
    (local.set $cnt (i32.const 13))
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
    (loop)
  )
  (func $f1 (param $cnt i32)
    (loop $l
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
  )
  (func $f2 (param $depth i32)
    (local $cnt i32)
    (loop $l
      (block $b
        (br_if $b (i32.eqz (local.get $depth)))
        (call $f2 (i32.const 0))
      )
      (local.set $cnt (i32.add (local.get $cnt) (i32.const 1)))
      (br_if $l (i32.le_u (local.get $cnt) (i32.const 3)))
    )
    (br_if 0 (i32.eqz (local.get $depth)))
    (call $f2 (i32.sub (local.get $depth) (i32.const 1)))
  )
)
