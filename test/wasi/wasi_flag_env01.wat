;; A test case to confirm the behavior of environment related flags.
;; Therefore, wasm file itself is almost empty.

;; env01: Error Case - wizeng should not accept a environment variable using --env flag which doesn't contain an equal symbol (e.g., FOO)
(module
  (func $main (export "main")
  )
)
