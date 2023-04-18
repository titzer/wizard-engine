(module
  (type $v_v (func))
  
  (import "wizeng" "new_funcref" (func $new_funcref (param i32 i32) (result (ref $v_v))))
  
  (memory (export "mem") 1 1)
  (data (i32.const 0) "\00\01\0B") ;; nop function
  
  (func $main (export "main")
    (call_ref $v_v (call $new_funcref (i32.const 0) (i32.const 3)))
  )

)
