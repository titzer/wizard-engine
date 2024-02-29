;; Test try-delegate blocks.

(module
  (tag $e0)
  (tag $e1)

  (func (export "delegate-to-caller-trivial")
    (try
      (do (throw $e0))
      (delegate 0)))
)

(assert_exception (invoke "delegate-to-caller-trivial"))
