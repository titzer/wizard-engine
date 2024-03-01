(module
  (tag $e0)
  (tag $e1)

  (func (export "catchall-throw_ref-0")
    (block $h (result exnref)
      (try_table (result exnref) (catch_all_ref $h) (throw $e0))
    )
    (throw_ref)
  )
)

(assert_exception (invoke "catchall-throw_ref-0"))

