;; Test: resume_throw with f32 tag payload
(module
  (type $f (func (result f32)))
  (type $c (cont $f))

  (tag $e (param f32))

  (func $inner (result f32)
    (block $h (result f32)
      (try_table (catch $e $h) (suspend $e (f32.const 2.71828)))
      (f32.const -1)
    )
  )
  (elem declare func $inner)

  (func (export "main") (result f32)
    (block $h (result f32 (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw f32 value into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (f32.const 2.71828))
