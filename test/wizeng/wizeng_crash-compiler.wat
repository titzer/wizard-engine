(module
  (func $start
    (call $crash)
  )
  (func $main (export "main") (result i32)
    (call $crash)
    (i32.const 11)
  )
  (func $crash
    unreachable (; hex-edited manually to CRASH opcode ;)
    unreachable
  )
)
