;; A correctly implemented whamm probe which prints out all `i32.add`
(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (export "wasm:opcode:i32.add(fid, pc, arg0, arg1)" (func $print_const))
  (export "" (memory $mem))

  (memory $mem 1)

  (data (i32.const 0x00) "func=")
  (data (i32.const 0x10) ", pc=")
  (data (i32.const 0x20) ": ")
  (data (i32.const 0x30) "+")
  (data (i32.const 0x40) "=")
  (data (i32.const 0x50) "\n")

  (func $print_const (param $func i32) (param $pc i32) (param $num1 i32) (param $num2 i32)
    (call $puts (i32.const 0x00) (i32.const 5))
    (call $puti (local.get $func))
    (call $puts (i32.const 0x10) (i32.const 5))
    (call $puti (local.get $pc))
    (call $puts (i32.const 0x20) (i32.const 2))
    (call $puti (local.get $num1))
    (call $puts (i32.const 0x30) (i32.const 1))
    (call $puti (local.get $num2))
    (call $puts (i32.const 0x40) (i32.const 1))
    (call $puti (i32.add (local.get $num1) (local.get $num2)))
    (call $puts (i32.const 0x50) (i32.const 1))
  )
)
