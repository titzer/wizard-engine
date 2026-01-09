;; Test: resume_throw with multiple values in tag payload
(module
  (type $f (func (result i32 i64 f32)))
  (type $c (cont $f))

  (tag $e (param i32 i64 f32))

  (func $inner (result i32 i64 f32)
    (block $h (result i32 i64 f32)
      (try_table (catch $e $h) (suspend $e (i32.const 42) (i64.const 100) (f32.const 3.14)))
      (i32.const -1) (i64.const -1) (f32.const -1)
    )
  )
  (elem declare func $inner)

  (func (export "main") (result i32 i64 f32)
    (block $h (result i32 i64 f32 (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw multi values back into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (i32.const 42) (i64.const 100) (f32.const 3.14))
