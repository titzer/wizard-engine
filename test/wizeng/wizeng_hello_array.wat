(module
  (type $arr_i8 (array i8))
  (import "wizeng" "puta" (func $puta (param (ref null $arr_i8) i32 i32)))
  (memory (export "mem") 1 1)
  (data $data "Hello Wizeng!\nEXTRA_JUNK")

  (func $main (export "main")
    (call $puta (array.new_data 0 $data (i32.const 0) (i32.const 14)) (i32.const 0) (i32.const 14))
  )
)
