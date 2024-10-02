(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t (param i32))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (try_table (catch $t 0)
    (resume_throw
      $c1 $t
      (i32.const 47)
      (cont.new $c1 (ref.func $empty)))
    )
    i32.const 42 ;; unreachable
  )
)

(assert_return (invoke "main") (i32.const 47))
