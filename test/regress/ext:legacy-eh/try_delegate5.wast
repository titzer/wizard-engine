;; Test try-delegate blocks.

(module
  (tag $e0)
  (func $throw-if (param i32)
    (local.get 0)
    (if (then (throw $e0)) (else))
  )

  (func (export "delegate-throw") (param i32) (result i32)
    (try $t (result i32)
      (do
        (try (result i32)
          (do (local.get 0) (call $throw-if) (i32.const 1))
          (delegate $t)
        )
      )
      (catch $e0 (i32.const 2))
    )
  )
)

(assert_return (invoke "delegate-throw" (i32.const 0)) (i32.const 1))
(assert_return (invoke "delegate-throw" (i32.const 1)) (i32.const 2))
