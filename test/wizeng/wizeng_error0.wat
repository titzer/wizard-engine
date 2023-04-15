(module
  (import "wizeng" "crash" (func $crash))
  (import "wizeng" "error" (func $error (param i32 i32)))

  (memory (export "mem") 1 1)
  (data (i32.const 107) "this is my message to you hoo hoo#^@")

  (func $foo
    (call $error (i32.const 107) (i32.const 33))
  )
  (func $main (export "main")
    (call $foo)
    (call $crash)
  )
)
