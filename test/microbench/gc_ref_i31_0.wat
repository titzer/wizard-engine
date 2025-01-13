;; INNER_CALIBRATION = 85000
(module
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const __REPEAT__))
    (loop $l
      (call $check (ref.i31 (i32.const __INNER_ITERATIONS__)))
      drop
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
   
  )
  (func $check (param (ref null i31)) (result i32)
    (local $i i32)
    (block $done
      (loop $l
        (br_if $done
	  (i32.ge_u
	    (local.get $i)
	    (i31.get_s (local.get 0))))
	(local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $l)
      )
    )
    (i32.const -1)
  )
)
