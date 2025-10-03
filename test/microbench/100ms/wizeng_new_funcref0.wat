;; INNER_CALIBRATION = 3250
(module
  (type $v_v (func))
  
  (import "wizeng" "new_funcref" (func $new_funcref (param i32 i32) (result (ref $v_v))))
  
  (memory (export "mem") 1 1)
  (data (i32.const 0) "\00\01\0B") ;; nop function
  
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 325000 (;$INNER_ITERATIONS;)))
    (loop $l
      (drop (call $new_funcref (i32.const 0) (i32.const 3)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
