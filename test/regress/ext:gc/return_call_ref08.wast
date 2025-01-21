(module
  (type $t (func))
  (type $t1 (func (result (ref $t))))
  (type $t2 (func (result (ref null $t))))
  (type $t3 (func (result (ref func))))
  (type $t4 (func (result (ref null func))))
  (elem declare func $f11 $f22 $f33 $f44)
  (func $f11 (result (ref $t)) (return_call_ref $t1 (ref.func $f11)))
  (func $f21 (result (ref null $t)) (return_call_ref $t1 (ref.func $f11)))
  (func $f22 (result (ref null $t)) (return_call_ref $t2 (ref.func $f22)))
  (func $f31 (result (ref func)) (return_call_ref $t1 (ref.func $f11)))
  (func $f33 (result (ref func)) (return_call_ref $t3 (ref.func $f33)))
  (func $f41 (result (ref null func)) (return_call_ref $t1 (ref.func $f11)))
  (func $f42 (result (ref null func)) (return_call_ref $t2 (ref.func $f22)))
  (func $f43 (result (ref null func)) (return_call_ref $t3 (ref.func $f33)))
  (func $f44 (result (ref null func)) (return_call_ref $t4 (ref.func $f44)))
)

(assert_invalid
  (module
    (type $t (func))
    (type $t2 (func (result (ref null $t))))
    (elem declare func $f22)
    (func $f12 (result (ref $t)) (return_call_ref $t2 (ref.func $f22)))
    (func $f22 (result (ref null $t)) (return_call_ref $t2 (ref.func $f22)))
  )
  "type mismatch"
)

(assert_invalid
  (module
    (type $t (func))
    (type $t3 (func (result (ref func))))
    (elem declare func $f33)
    (func $f13 (result (ref $t)) (return_call_ref $t3 (ref.func $f33)))
    (func $f33 (result (ref func)) (return_call_ref $t3 (ref.func $f33)))
  )
  "type mismatch"
)

(assert_invalid
  (module
    (type $t (func))
    (type $t4 (func (result (ref null func))))
    (elem declare func $f44)
    (func $f14 (result (ref $t)) (return_call_ref $t4 (ref.func $f44)))
    (func $f44 (result (ref null func)) (return_call_ref $t4 (ref.func $f44)))
  )
  "type mismatch"
)

(assert_invalid
  (module
    (type $t (func))
    (type $t3 (func (result (ref func))))
    (elem declare func $f33)
    (func $f23 (result (ref null $t)) (return_call_ref $t3 (ref.func $f33)))
    (func $f33 (result (ref func)) (return_call_ref $t3 (ref.func $f33)))
  )
  "type mismatch"
)

(assert_invalid
  (module
    (type $t (func))
    (type $t4 (func (result (ref null func))))
    (elem declare func $f44)
    (func $f24 (result (ref null $t)) (return_call_ref $t4 (ref.func $f44)))
    (func $f44 (result (ref null func)) (return_call_ref $t4 (ref.func $f44)))
  )
  "type mismatch"
)

(assert_invalid
  (module
    (type $t4 (func (result (ref null func))))
    (elem declare func $f44)
    (func $f34 (result (ref func)) (return_call_ref $t4 (ref.func $f44)))
    (func $f44 (result (ref null func)) (return_call_ref $t4 (ref.func $f44)))
  )
  "type mismatch"
)
