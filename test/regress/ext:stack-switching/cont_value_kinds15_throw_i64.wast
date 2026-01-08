;; Test: resume_throw with i64 tag payload
(module
  (type $f (func (result i64)))
  (type $c (cont $f))

  (tag $e (param i64))

  (func $inner (result i64)
    (block $h (result i64)
      (throw_ref
        (block $catch (result exnref)
          (try_table (catch $e $catch)
            (suspend $e (i64.const 0))
          )
          (return (i64.const -1))
        )
      )
    )
  )
  (elem declare func $inner)

  (func (export "main") (result i64)
    (block $h (result (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (resume_throw $c $e (i64.const 0xDEADBEEFCAFEBABE))
  )
)

(assert_return (invoke "main") (i64.const 0xDEADBEEFCAFEBABE))
