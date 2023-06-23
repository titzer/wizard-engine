(module
  ;; WASI instance import
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $environ_sizes_get (param i32 i32) (result i32)))
  (memory 1)
  (export "memory" (memory 0))
  (func $main (export "_start") (result i32)
    ;; call environ_sizes_get with i32, i32 pairs
    (call $environ_sizes_get (i32.const 0) (i32.const 4))
    ;; return the number of environment variables
    (return (i32.load (i32.const 0)))
  )
)