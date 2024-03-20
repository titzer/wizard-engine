;; INNER_CALIBRATION = 1000
(module
  (tag $e (param i32))
  (func $main (export "main")
    (local $y i32)

    (local.tee $y (i32.const __INNER_ITERATIONS__))
    (loop $l (param i32)
      drop
      (i32.eqz (local.tee $y (i32.sub (local.get $y) (i32.const 1))))
      
      (br_if 1)
      (try_table (catch $e $l)
        (call $recurse (i32.const 10))
      )
    )
  )
  (func $recurse (param i32)
    (if (i32.gt_u (local.get 0) (i32.const 0))
    	(then (call $recurse (i32.sub (local.get 0) (i32.const 1))))
	(else (throw $e (i32.const 11)))
    )
  )	
)
