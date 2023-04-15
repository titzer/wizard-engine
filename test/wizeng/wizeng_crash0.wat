(module
  (import "wizeng" "crash" (func $crash))

  (func $foo
    (call $crash)
  )
  (func $main (export "main")
    (call $foo)
    (call $crash)
  )
)
