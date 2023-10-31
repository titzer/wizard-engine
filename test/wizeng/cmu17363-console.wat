(module
  (import "console" "log_int" (func $log_int (param i32)))
  (import "console" "log_bool" (func $log_bool (param i32)))
  (import "js" "mem" (memory 0))
  
  (func $main (export "main")
    (call $log_int (i32.const 11223344))
    (call $log_int (i32.const -66778899))
    (call $log_int (memory.size))
    (call $log_bool (i32.const 1))
    (call $log_bool (i32.const 0))
  )
)
