(module
  ;; WASI instance import
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $environ_sizes_get (param i32 i32) (result i32)))
  (memory 1)
  (export "memory" (memory 0))
  (func $main (export "_start") (result i32)
    ;; A pointer to the number of environment vairables
    (local $num_environ_p i32)
    ;; A pointer to the total size of environment variables
    (local $environ_size_p i32)
    ;; The number of environment vairables
    (local $num_environ i32)
    ;; The total size of environment variables
    (local $environ_size i32)
    ;; A pointer to the pointer of environment variables data
    (local $environ_p i32)
    ;; A pointer to the pointer of environmnet variables buf
    (local $environ_buf_p i32)

    ;; store the number of environment variables at 0
    (local.set $num_environ_p (i32.const 0))
    ;; store the number of environment variables at 4
    (local.set $environ_size_p (i32.const 4))
    ;; call environ_sizes_get with i32, i32 pairs
    (call $environ_sizes_get (local.get $num_environ_p) (local.get $environ_size_p))

    (local.set $num_environ (i32.load (local.get $num_environ_p)))
    (local.set $environ_size (i32.load (local.get $environ_size_p)))

    ;; return the number of environment variables
    (return (i32.load (i32.const 0)))
  )
)