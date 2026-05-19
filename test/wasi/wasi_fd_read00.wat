(module
  (import "wasi_snapshot_preview1" "fd_read" (func $read (param i32 i32 i32 i32) (result i32)))
  (func (export "main")
    (drop (call $read (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0)))
  )
)