;; Test: successful resume_throw through table to abort continuation
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $abort)

  (table $t 5 (ref null $c1))

  (func $unreachable_func (result i32)
    (unreachable)
  )
  (elem declare func $unreachable_func)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $unreachable_func)))
    (block $handler (result i32)
      (throw_ref
        (block $on_abort (result exnref)
          (resume_throw $c1 $abort (on $abort $on_abort) (table.get $t (i32.const 0)))
          (return (i32.const -1))
        )
      )
    )
  )
)

(assert_exception (invoke "main"))
