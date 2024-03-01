(module
  (tag $e0)
  (tag $e1)

  (func (export "catch-throw_ref-1") (param i32) (result i32)
    (block $h (result exnref)
      (try_table (result i32) (catch_ref $e0 $h) (throw $e0))
      (return)
    )
    (if (param exnref) (i32.eqz (local.get 0))
      (then (throw_ref))
      (else (drop))
    )
    (i32.const 23)
  )
)

(assert_exception (invoke "catch-throw_ref-1" (i32.const 0)))
(assert_return (invoke "catch-throw_ref-1" (i32.const 1)) (i32.const 23))

