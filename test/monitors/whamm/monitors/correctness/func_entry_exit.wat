(module
  (func $putc (import "wizeng" "putc") (param i32))
  (func $puti (import "wizeng" "puti") (param i32))

  (func  $func_entry_probe (export "wasm:func:entry(fid,pc)") (param i32 i32)
    (call $putc (i32.const 70)) ;; 'F'
    (call $puti (local.get 0))
    (call $putc (i32.const 44)) ;; ','
    (call $puti (local.get 1))
    (call $putc (i32.const 10)) ;; '\n'
  )
  (func $func_exit_probe (export "wasm:func:exit(fid,pc)") (param i32 i32)
    (call $putc (i32.const 88)) ;; 'X'
    (call $puti (local.get 0))
    (call $putc (i32.const 44)) ;; ','
    (call $puti (local.get 1))
    (call $putc (i32.const 10)) ;; '\n'
  )
)
