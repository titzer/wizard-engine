(module
  (tag $e0)

  (func (export "catch-throw_ref-0")
    (block $h (result exnref)
      (try_table (catch_ref $e0 $h) (throw $e0))
      (unreachable)
    )
    (throw_ref)
  )
)

(assert_exception (invoke "catch-throw_ref-0"))
