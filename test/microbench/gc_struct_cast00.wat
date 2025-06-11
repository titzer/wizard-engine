;; INNER_CALIBRATION = 1650
(module
  (type $st1 (struct (field $f (ref null $st1))))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $cast (ref.null $st1) (i32.const 1 (;$INNER_ITERATIONS;)))
      (call $cast (struct.new $st1 (ref.null $st1)) (i32.const 1 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
   
  )
  (func $cast (param (ref null any) i32)
    (block $done
      (loop $l
        (br_if $done
	  (i32.eqz (local.get 1)))
        (drop (ref.cast (ref null $st1) (local.get 0)))
  	(local.set 1 (i32.sub (local.get 1) (i32.const 1)))
        (br $l)
      )
    )
  )
)
