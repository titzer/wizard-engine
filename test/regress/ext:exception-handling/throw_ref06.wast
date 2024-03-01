(module
  (tag $e0)
  (tag $e1)

  (func (export "throw_ref-stack-polymorphism")
    (local $e exnref)
    (block $h (result exnref)
      (try_table (result f64) (catch_ref $e0 $h) (throw $e0))
      (unreachable)
    )
    (local.set $e)
    (i32.const 1)
    (throw_ref (local.get $e))
  )
)

(assert_exception (invoke "throw_ref-stack-polymorphism"))

