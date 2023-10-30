(module
  (import "wizeng" "puts" (func $puts (param i32 i32)))
  (memory (export "mem") 1 1)
  (data (i32.const 0xccdd) "Hello Wizeng!\nEXTRA_JUNK")

  (func $main (export "main")
    (call $puts (i32.const 0xccdd) (i32.const 14))
  )
)
