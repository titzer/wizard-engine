(module
  (import "wizeng" "puts" (func $puts (param i32 i32)))
  (memory (export "engine:data") 1 1)
  (data (i32.const 20) "\n")

  (func (export "wasm:opcode:call (fname)") (param i32 i32))
)
