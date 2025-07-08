(module
  (import "wizeng" "puts" (func $puts (param i32 i32)))
  (memory (export "engine:data") 1 1)
  (data (i32.const 20) "\n")

  (func (export "wasm:opcode:call ($print(fname))") (param i32))

  (func (export "$print") (param i32 i32) (result i32)
    (call $puts (local.get 0) (local.get 1))
    (call $puts (i32.const 20) (i32.const 1))

    i32.const 0
  )
)
