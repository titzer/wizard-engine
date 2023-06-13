;; Test try-delegate blocks.

(module
  (tag $e0)
  (tag $e1)

  (func (export "delegate-no-throw") (result i32)
    (try $t (result i32)
      (do (try (result i32) (do (i32.const 1)) (delegate $t)))
      (catch $e0 (i32.const 2))
    )
  )
)

(assert_return (invoke "delegate-no-throw") (i32.const 1))
