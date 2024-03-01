(module
  (tag $e0)
  (tag $e1)
  (tag $e2)

  (func (export "throw_ref-multi") (param i32) (result i32)
    (local $exn1 exnref)

    (block $h1 (result exnref)
      (if (i32.eq (local.get 0) (i32.const 0))
        (then (try_table (catch_ref $e0 $h1) (throw $e0))))

      (if (i32.eq (local.get 0) (i32.const 1))
        (then (try_table (catch_ref $e1 $h1) (throw $e1))))
	
      (if (i32.eq (local.get 0) (i32.const 2))
        (then (try_table (catch_ref $e2 $h1) (throw $e2))))

      (ref.null exn)
    )
    local.set 1
    (if (ref.is_null (local.get 1))
      (then (return (i32.const 57)))
      (else (throw_ref (local.get 1)))
    )
    (i32.const -99)
  )
)

(assert_exception (invoke "throw_ref-multi" (i32.const 0)))
(assert_exception (invoke "throw_ref-multi" (i32.const 1)))
(assert_exception (invoke "throw_ref-multi" (i32.const 2)))
(assert_return (invoke "throw_ref-multi" (i32.const 3)) (i32.const 57))
