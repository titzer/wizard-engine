;; INNER_CALIBRATION = 650
(module
  (type $st (struct (field $f (ref null $st))))
  (func $main (export "main")
    (local $y i32)
    (local $z (ref null $st))

    (local.set $z (call $alloc (ref.null $st) (i32.const 65)))

    (local.set $y (i32.const 65000))
    (loop $l
      (call $walk (local.get $z))
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
  (func $walk (param (ref null $st)) (result i32)
    (local $len i32)
    (block $done
      (loop $l
        (br_if $done (ref.is_null (local.get 0)))
	(local.set 0 (struct.get $st $f (local.get 0)))
	(local.set $len (i32.add (local.get $len) (i32.const 1)))
        (br $l)
      )
    )
    (local.get $len)
  )
)
