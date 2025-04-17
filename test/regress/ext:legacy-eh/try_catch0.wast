(module
  (tag $e0 (export "e0"))
  (func (export "throw") (throw $e0))
)

(register "test")

(module
  (func $imported-throw (import "test" "throw"))
  (tag $e0)

  (func (export "imported-mismatch") (result i32)
    (try (result i32)
      (do
        (try (result i32)
          (do
            (i32.const 1)
            (call $imported-throw)
          )
          (catch $e0 (i32.const 2))
        )
      )
      (catch_all (i32.const 3))
    )
  )
)
(assert_return (invoke "imported-mismatch") (i32.const 0x3))
