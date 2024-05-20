(module
  (import "wali" "SYS_write" (func $write (param i32 i32 i32) (result i64)))
  (memory (export "mem") 1 1)
  (data (i32.const 0xccdd) "Hello World!\nEXTRA_JUNK")

  (func $main (export "main")
    (drop (call $write (i32.const 1) (i32.const 0xccdd) (i32.const 13)))
  )
)
