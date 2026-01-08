;; Test: suspend with i32 payload
(module
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $t (param i32) (result i32))

  (func $inner (result i32)
    (i32.add (i32.const 10) (suspend $t (i32.const 32)))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result i32 (ref $c))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; received 32 from suspend, pass back 32, inner adds 10 = 42
    (resume $c)
  )
)

(assert_return (invoke "main") (i32.const 42))
