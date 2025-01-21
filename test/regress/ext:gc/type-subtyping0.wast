(module
  (type $t0 (sub (func (result (ref null func)))))
  (rec (type $t1 (sub $t0 (func (result (ref null $t1))))))
  (rec (type $t2 (sub $t1 (func (result (ref null $t2))))))

  (func $f0 (type $t0) (ref.null func))
  (table funcref (elem $f0))

  (func $run (export "run")
    (drop (call_indirect (type $t0) (i32.const 0)))
  )
)
(assert_return (invoke "run"))
