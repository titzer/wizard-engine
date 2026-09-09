;; Resumes without clauses in the middle of a chain publish empty tables; the suspend walks through them.
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fs (func (param i32) (result i32)))
  (type $cs (cont $fs))
  (tag $t (param i32) (result i32))

  (func $leaf (result i32)
    (i32.add (i32.const 1) (suspend $t (i32.const 5)))
  )
  (func $mid (result i32)
    (i32.add (i32.const 10) (resume $c (cont.new $c (ref.func $leaf))))
  )
  (func $mid2 (result i32)
    (i32.add (i32.const 100) (resume $c (cont.new $c (ref.func $mid))))
  )
  (elem declare func $leaf $mid $mid2)

  (func (export "main") (result i32)
    (local $k (ref null $cs))
    (block $h (result i32 (ref null $cs))
      (return (resume $c (on $t $h) (cont.new $c (ref.func $mid2))))
    )
    (local.set $k)
    ;; 5 arrives through two clause-less resumes; answer 10: leaf 11, mid 21, mid2 121
    (i32.const 2)
    (i32.mul)
    (local.get $k)
    (resume $cs)
  )
)

(assert_return (invoke "main") (i32.const 121))
