;; A correctly-implemented whamm probe which prints the static call number
;; every time.
(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (export "$inc_static_count" (func $inc_static_count))
  (export "wasm:opcode:call($inc_static_count())" (func $inc_dyn_count))
  (export "" (memory $mem))

  (memory $mem 1)

  (data (i32.const 0x20) ",")
  (data (i32.const 0x21) "\n")

  (global $static_count (mut i32) (i32.const 0))
  (global $dyn_count (mut i32) (i32.const 0))

  (func $inc_static_count (result i32)	;; assigns a new id for every site
    global.get $static_count
    i32.const 1
    i32.add
    global.set $static_count
    global.get $static_count
  )

  (func $inc_dyn_count (param i32)	;; param required but not used
    (call $puti (local.get 0))
    (call $puts (i32.const 0x20) (i32.const 1))
  )

  (func (export "wasm:exit")
    (call $puts (i32.const 0x21) (i32.const 1))
  )
)
