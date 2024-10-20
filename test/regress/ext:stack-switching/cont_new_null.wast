(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func (export "main") (result i32)
    (cont.new $c1 (ref.null $f1))
    drop
    i32.const 42
  )
)

(assert_trap (invoke "main") "null function reference")
