;; Test: resume_throw with f64 tag payload
(module
  (type $f (func (result f64)))
  (type $c (cont $f))

  (tag $e (param f64))

  (func $inner (result f64)
    (block $h (result f64)
      (throw_ref
        (block $catch (result exnref)
          (try_table (catch $e $catch)
            (suspend $e (f64.const 0))
          )
          (return (f64.const -1))
        )
      )
    )
  )
  (elem declare func $inner)

  (func (export "main") (result f64)
    (block $h (result (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (resume_throw $c $e (f64.const 3.14159265358979))
  )
)

(assert_return (invoke "main") (f64.const 3.14159265358979))
