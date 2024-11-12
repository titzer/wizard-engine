;; INNER_CALIBRATION = 16500
(module
  (type $st (struct (field $f (ref null $st))))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 5))
    (loop $l
      (call $alloc (ref.null $st) (i32.const 330000))
      drop
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
   
  )
  (func $alloc (param (ref null $st) i32) (result (ref null $st))
    (block $done
      (loop $l
        (br_if $done
	  (i32.eqz (local.get 1)))
	(local.set 0 (struct.new $st (local.get 0)))
	(local.set 1 (i32.sub (local.get 1) (i32.const 1)))
        (br $l)
      )
    )
    (local.get 0)
  )
)
