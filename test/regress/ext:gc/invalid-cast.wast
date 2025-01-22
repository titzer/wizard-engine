(module
  (type $s1 (struct))
  (type $s2 (struct (field i32)))

  (func $cast (param (ref null $s1)) (result (ref null $s2))
    (ref.cast (ref null $s2) (local.get 0))
  )
  (func (export "f")
    (drop (call $cast (struct.new $s1)))
  )
)

(assert_trap (invoke "f") "cast failure")