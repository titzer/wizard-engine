(module
  (func $putc (import "wizeng" "putc") (param i32))
  (func $puti (import "wizeng" "puti") (param i32))

  (func $func_exit_probe (export "wasm:func:exit(pc)") (param i32)
    (call $putc (i32.const 88)) ;; 'X'
    (call $puti (local.get 0))
  )
)
