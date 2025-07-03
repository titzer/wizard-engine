(module
  (import "wizeng" "putc" (func $putc (param i32)))
  (import "whamm:dyninstr" "insert_new_probe" (func $insert_probe (param i32 i32 funcref) (result i32)))
  (import "whamm:dyninstr" "remove_probe" (func $remove_probe (param i32)))

  (global $pong_probe_id (mut i32) (i32.const -1))
  
  (elem declare func $pong)
 
  (func (export "wasm:opcode:loop(fid,pc,probe_id)") (param i32 i32 i32)
    ;; disable self (declared) and insert ping
    (call $putc (i32.const 112)) ;; 'p'
    (call $remove_probe (local.get 2))
    (global.set $pong_probe_id (call $insert_probe (local.get 0) (local.get 1) (ref.func $pong)))
  )

  (func $pong
    ;; disable self (ping) and insert pong
    (call $putc (i32.const 80)) ;; 'P'
    (call $remove_probe (global.get $pong_probe_id))
  )

  (func (export "wasm:exit")
    (call $putc (i32.const 10)) ;; '\n'
  )
)
