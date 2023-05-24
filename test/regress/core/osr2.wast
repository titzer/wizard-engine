;; Functions

(module $Mf
  (func (export "call") (param $cnt i32) (result i32)
    (loop $l
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	  (br_if $l (local.get $cnt))
    )
    (local.get $cnt)
  )
)

(assert_return (invoke "call" (i32.const 1001)) (i32.const 0))
