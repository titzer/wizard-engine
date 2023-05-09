(module
  (func $get (import "wasi_snapshot_preview1" "clock_time_get") (param i32 i64 i32) (result i32))
  (memory (export "memory") 1 1)
  (func (export "_start")
    (drop (call $get (i32.const 2) (i64.const 0) (i32.const 0)))
  )
)
