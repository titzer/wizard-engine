;; Test: resume_throw with i32 tag payload
(module
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $e (param i32))

  (func $inner (result i32)
    (block $h (result i32)
      (try_table (catch $e $h) (suspend $e (i32.const 42)))
      (i32.const -1)
    )
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result i32 (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw i32 value 42 into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (i32.const 42))
