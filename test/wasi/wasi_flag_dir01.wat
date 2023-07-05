;; A test case to confirm the behavior of directory related flags.
;; Therefore, wasm file itself is almost empty.

;; dir01: Error Case - wizeng should throw an error when specified directory does not exist
(module
  (func $get (import "wasi_snapshot_preview1" "clock_time_get") (param i32 i64 i32) (result i32))
  (func $main (export "main")
  )
)
