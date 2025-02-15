;; Test try-delegate blocks.

(module
  (tag $e0)

  (func (export "delegate-to-caller-skipping")
    (try (do (try (do (throw $e0)) (delegate 1))) (catch_all))
  )
)

(assert_exception (invoke "delegate-to-caller-skipping"))
