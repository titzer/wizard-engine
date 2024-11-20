;; An incorrectly implemented whamm probe which prints out all `i32.const`
(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (export "wasm:opcode:i32.const(fid, pc, imm0)" (func $print_const))
  (export "" (memory $mem))

  (memory $mem 1)

  (data (i32.const 0x00) "func=")
  (data (i32.const 0x10) ", pc=")
  (data (i32.const 0x20) ": ")
  (data (i32.const 0x30) "\n")

  (func $print_const (param $func i32) (param $pc i32) (param $num i64)
    (call $puts (i32.const 0x00) (i32.const 5))
    (call $puti (local.get $func))
    (call $puts (i32.const 0x10) (i32.const 5))
    (call $puti (local.get $pc))
    (call $puts (i32.const 0x20) (i32.const 2))
    (call $puts (i32.const 0x30) (i32.const 1))
  )
)
