(module
  (tag $e1 (param i32))
  (tag $e2 (param i32))

  (func $do_throw (param i32)
    (if (i32.lt_s (local.get 0) (i32.const 0))
      (then (throw $e1 (local.get 0)))
      (else (throw $e2 (local.get 0)))
    )
  )

  (func (export "test-throw") (param i32) (result i32)
    (block $h1 (result i32)  
      (block $h2 (result i32)
        (try_table (catch $e1 $h1) (catch $e2 $h2) (call $do_throw (local.get 0)))
        i32.const 22
      )
      i32.const 15
      i32.add
    )
    i32.const 11
    i32.add
  )
)

(assert_return (invoke "test-throw" (i32.const 44)) (i32.const 70))
(assert_return (invoke "test-throw" (i32.const 4444)) (i32.const 4470))

(assert_return (invoke "test-throw" (i32.const -99)) (i32.const -88))
(assert_return (invoke "test-throw" (i32.const -9999)) (i32.const -9988))
