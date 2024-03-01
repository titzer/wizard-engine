(module
  (tag $e)

  (func (export "test-throw") (result i32)
    (block $h1 (result exnref)  
      (block $h2 (result exnref)
        (try_table (catch_ref $e $h1) (catch_ref $e $h2) (throw $e))
        (ref.null exn)
      )
    )
    ref.is_null
  )
)

(assert_return (invoke "test-throw") (i32.const 0))
