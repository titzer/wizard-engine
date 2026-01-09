;; Test: resume_throw with v128 tag payload
(module
  (type $f (func (result v128)))
  (type $c (cont $f))

  (tag $e (param v128))

  (func $inner (result v128)
    (block $h (result v128)
      (try_table (catch $e $h) (suspend $e (v128.const i32x4 1 2 3 4)))
      (v128.const i32x4 -1 -1 -1 -1)
    )
  )
  (elem declare func $inner)

  (func (export "main") (result v128)
    (block $h (result v128 (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw v128 value into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (v128.const i32x4 1 2 3 4))
