(module
  (tag $tag)
  (func (export "main")
    (try
      (do (throw $tag))
      (catch $tag)))
)

(assert_return (invoke "main"))
