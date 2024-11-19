;; An incorrectly implemented whamm probe which prints out static and dynamic
;; count of `call` instruction
(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (export "wasm:opcode:call($inc_static_count())" (func $inc_dyn_count))
  (export "" (memory $mem))

  (memory $mem 1)

  (data (i32.const 0x00) "static: ")
  (data (i32.const 0x10) ", dynamic: ")
  (data (i32.const 0x20) "\n")

  (global $static_count (mut i32) (i32.const 0))
  (global $dyn_count (mut i32) (i32.const 0))

  (func $inc_static_count (result i32)	;; return value required but unused
    global.get $static_count
    i32.const 1
    i32.add
    global.set $static_count
    global.get $static_count
  )

  (func $inc_dyn_count (param i32)	;; param required but not used
    global.get $dyn_count
    i32.const 1
    i32.add
    global.set $dyn_count
  )

  (func (export "wasm:exit")
    (call $puts (i32.const 0x00) (i32.const 8))
    (call $puti (global.get $static_count))
    (call $puts (i32.const 0x10) (i32.const 11))
    (call $puti (global.get $dyn_count))
    (call $puts (i32.const 0x20) (i32.const 1))
  )
)
