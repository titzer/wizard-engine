;; A probe on `call` that calls $puti, then calls $trap (kept un-inlinable via
;; its 11 params), which immediately traps with unreachable.
(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (export "wasm:opcode:call(arg0)" (func $probe))
  (func $trap (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    unreachable)
  (func $probe (param $x i32)
    (call $puti (local.get $x))
    (call $trap (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0)
                (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0))
  )
)
