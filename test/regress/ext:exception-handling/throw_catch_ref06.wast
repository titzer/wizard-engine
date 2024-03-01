(module
  (tag $e-i32 (param i32))

  (func (export "test-throw") (param i32) (result i32)
    (block $h1 (result i32 exnref)  
      (block $h2 (result i32 exnref)
        (try_table (catch_ref $e-i32 $h1) (catch_ref $e-i32 $h2) (local.get 0) (throw $e-i32))
        i32.const 22
        (ref.null exn)
      )
      drop
      i32.const 15
      i32.add
      (ref.null exn)
    )
    drop
    i32.const 11
    i32.add
  )
)

(assert_return (invoke "test-throw" (i32.const 44)) (i32.const 55))
(assert_return (invoke "test-throw" (i32.const -99)) (i32.const -88))
