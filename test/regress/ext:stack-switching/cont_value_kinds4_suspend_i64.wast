;; Test: suspend with i64 payload
(module
  (type $f (func (result i64)))
  (type $c (cont $f))

  (tag $t (param i64) (result i64))

  (func $inner (result i64)
    (i64.add (i64.const 0x100000000) (suspend $t (i64.const 0xABCDEF00)))
  )
  (elem declare func $inner)

  (func (export "main") (result i64)
    (block $h (result i64 (ref $c))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (resume $c)
  )
)

(assert_return (invoke "main") (i64.const 0x1ABCDEF00))
