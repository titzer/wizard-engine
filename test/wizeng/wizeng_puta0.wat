(module
  (type $arr_i8 (array i8))
  (import "wizeng" "puta" (func $puta (param (ref null $arr_i8) i32 i32)))
  (data $data "..Hello Wizeng!\n..")

  (func $main (export "main")
    (local $a (ref $arr_i8))
    (local.set $a (array.new_data $arr_i8 $data (i32.const 2) (i32.const 14)))
    (call $puta (local.get $a) (i32.const 0) (i32.const 6))   ;; "Hello "
    (call $puta (local.get $a) (i32.const 6) (i32.const 8))   ;; "Wizeng!\n"
    (call $puta (local.get $a) (i32.const 14) (i32.const 0))  ;; empty range at the end
    (call $puta (local.get $a) (i32.const 10) (i32.const 5))  ;; out of bounds: traps
  )
)
