;; Test try-delegate blocks.

(module
  (tag $e0)
  (tag $e1)

  (func (export "delegate-to-block") (result i32)
    (try (result i32)
      (do (block (try (do (throw $e0)) (delegate 0)))
          (i32.const 0))
      (catch_all (i32.const 1)))
  )

)


(assert_return (invoke "delegate-to-block") (i32.const 1))

