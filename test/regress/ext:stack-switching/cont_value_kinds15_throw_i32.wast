;; Test: resume_throw with i32 tag payload
(module
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $e (param i32))

  (func $inner (result i32)
    (block $h (result i32)
      (throw_ref
        (block $catch (result exnref)
          (try_table (catch $e $catch)
            (suspend $e (i32.const 0))  ;; will be thrown at via resume_throw
          )
          (return (i32.const -1))
        )
      )
    )
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw i32 value 42 into the continuation
    (resume_throw $c $e (i32.const 42))
  )
)

(assert_return (invoke "main") (i32.const 42))
