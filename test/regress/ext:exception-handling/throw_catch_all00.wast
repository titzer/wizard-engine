(module
  (tag $e)

  (func (export "test-throw") (result i32)
    (block $h1 (result exnref)  
      (block $h2 (result exnref)
        (try_table (catch_all_ref $h1) (catch_all_ref $h2) (throw $e))
        (ref.null exn)
      )
    )
    ref.is_null
  )
)

(assert_return (invoke "test-throw") (i32.const 0))
