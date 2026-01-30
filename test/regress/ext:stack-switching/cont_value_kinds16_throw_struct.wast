;; Test: resume_throw with struct tag payload
(module
  (type $point (struct (field $x i32) (field $y i32)))

  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $e (param (ref $point)))

  (func $inner (result i32)
    (local $t (ref $point))
    (block $h (result (ref $point))
      (try_table (catch $e $h) (suspend $e (struct.new $point (i32.const 17) (i32.const 25))))
      (return (i32.const -1))
    )
    (local.set $t)

    ;; sum the fields: 17 + 25 = 42
    (struct.get $point $x (local.get $t))
    (struct.get $point $y (local.get $t))
    (i32.add)
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result (ref $point) (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw struct back into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (i32.const 42))
