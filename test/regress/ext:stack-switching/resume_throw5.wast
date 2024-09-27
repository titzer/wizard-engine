(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t (param i64 f64))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i64 f64)
    (try_table (catch $t 0)
    (resume_throw
      $c1 $t
      (i64.const -47) (f64.const -2.2)
      (cont.new $c1 (ref.func $empty)))
    )
    i64.const 444 ;; unreachable
    f64.const 999
  )
)

(assert_return (invoke "main") (i64.const -47) (f64.const -2.2))
