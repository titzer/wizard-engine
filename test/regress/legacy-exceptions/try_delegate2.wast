;; Test try-delegate blocks.

(module
  (tag $e0)
  (tag $e1)

  (func (export "delegate-to-catch") (result i32)
    (try (result i32)
      (do (try
            (do (throw $e0))
            (catch $e0
              (try (do (rethrow 1)) (delegate 0))))
          (i32.const 0))
      (catch_all (i32.const 1)))
  )
)


(assert_return (invoke "delegate-to-catch") (i32.const 1))
