;; INNER_CALIBRATION = 24000
(module
  (type $at (array i8))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $scan (array.new_default $at (i32.const 1 (;$INNER_ITERATIONS;))))
      drop
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
   
  )
  (func $scan (param (ref $at)) (result i32)
    (local $i i32)
    (block $done
      (loop $l
        (br_if $done
	  (i32.ge_u
	    (local.get $i)
	    (array.len (local.get 0))))
	(drop (array.get_u $at (local.get 0) (local.get $i)))
	(local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $l)
      )
    )
    (i32.const -1)
  )
)
