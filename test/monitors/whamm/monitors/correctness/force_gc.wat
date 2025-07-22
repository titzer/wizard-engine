(module
  (func $gc (import "wizeng" "force_gc"))
  (func (export "wasm:opcode:call")
    (call $gc)
    (call $gc)
  )
)
