(module
  (import "wizeng" "putc" (func $putc (param i32)))
  (func $main (export "main")
    (call $putc (i32.const 111)) ;;    'o'
    (call $putc (i32.const 107)) ;;    'k'
    (call $putc (i32.const 10))  ;;    '\n'
  )
)
