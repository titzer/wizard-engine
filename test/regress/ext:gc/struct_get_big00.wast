(module
  ;; pad the index space for types to force a longer LEB for local type index
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))

  (type $a (struct (field i32)))

  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))

  (type $b (struct (field i32)))

  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))

  (type $c (struct (field i32)))

  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))

  (type $d (struct (field i32)))

  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))
  (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct)) (type (struct))

  (type $e (struct (field i32)))

  (func (export "get_a") (result i32)
    (local (ref null $a))
    (struct.get $a 0 (local.get 0))
  )
  (func (export "get_b") (result i32)
    (local (ref null $b))
    (struct.get $b 0 (local.get 0))
  )
  (func (export "get_c") (result i32)
    (local (ref null $c))
    (struct.get $c 0 (local.get 0))
  )
  (func (export "get_d") (result i32)
    (local (ref null $d))
    (struct.get $d 0 (local.get 0))
  )
  (func (export "get_e") (result i32)
    (local (ref null $e))
    (struct.get $e 0 (local.get 0))
  )
)

(assert_trap (invoke "get_a") "null")
(assert_trap (invoke "get_b") "null")
(assert_trap (invoke "get_c") "null")
(assert_trap (invoke "get_d") "null")
(assert_trap (invoke "get_e") "null")
