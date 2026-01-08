;; Test: resume_throw with multiple values in tag payload
(module
  (type $f (func (result i32 i64 f32)))
  (type $c (cont $f))

  (tag $e (param i32 i64 f32))

  (func $inner (result i32 i64 f32)
    (block $h (result i32 i64 f32)
      (throw_ref
        (block $catch (result exnref)
          (try_table (catch $e $catch)
            (suspend $e (i32.const 0) (i64.const 0) (f32.const 0))
          )
          (return (i32.const -1) (i64.const -1) (f32.const -1))
        )
      )
    )
  )
  (elem declare func $inner)

  (func (export "main") (result i32 i64 f32)
    (block $h (result (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (resume_throw $c $e (i32.const 42) (i64.const 100) (f32.const 3.14))
  )
)

(assert_return (invoke "main") (i32.const 42) (i64.const 100) (f32.const 3.14))
