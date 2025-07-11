(module
  (func $putc (import "wizeng" "putc") (param i32))

  (func (export "wasm:opcode:end")
    (call $putc (i32.const 88))
  )
)
