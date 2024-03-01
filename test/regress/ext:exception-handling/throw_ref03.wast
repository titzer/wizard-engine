(module
  (tag $e0)
  (tag $e1)

  (func (export "catchall-throw_ref-1") (param i32) (result i32)
    (block $h (result exnref)
      (try_table (result i32) (catch_all_ref $h) (throw $e0))
      (return)
    )
    (if (param exnref) (i32.eqz (local.get 0))
      (then (throw_ref))
      (else (drop))
    )
    (i32.const 23)
  )
)

(assert_exception (invoke "catchall-throw_ref-1" (i32.const 0)))
(assert_return (invoke "catchall-throw_ref-1" (i32.const 1)) (i32.const 23))
