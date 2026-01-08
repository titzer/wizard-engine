;; Test: successful resume_throw through local to abort continuation
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $abort)

  (func $unreachable_func (result i32)
    (unreachable)
  )
  (elem declare func $unreachable_func)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $unreachable_func)))
    (block $handler (result i32)
      (throw_ref
        (block $on_abort (result exnref)
          (resume_throw $c1 $abort (on $abort $on_abort) (local.get $c))
          (return (i32.const -1))
        )
      )
    )
  )
)

(assert_exception (invoke "main"))
