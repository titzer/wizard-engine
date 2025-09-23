(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (func $probe_load (export "wasm:opcode:i32.load(arg0)") (param $index i64)
    (call $puti (i32.wrap_i64 (local.get 0)))
  )
)
