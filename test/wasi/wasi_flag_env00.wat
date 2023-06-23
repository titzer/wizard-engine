;; A test case to confirm the behavior of environment related flags.
;; Therefore, wasm file itself is almost empty.

;; env00: Normal Case - wizeng should accept multiple environment variables using --env flag which contains equal symbols (e.g., FOO=BAR)
(module
  (func $main (export "main")
  )
)
