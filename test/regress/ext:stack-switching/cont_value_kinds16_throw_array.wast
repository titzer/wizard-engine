;; Test: resume_throw with array tag payload
(module
  (type $arr (array i32))

  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $e (param (ref $arr)))

  (func $inner (result i32)
    (local $a (ref $arr))
    (block $h (result (ref $arr))
      (try_table (catch $e $h) (suspend $e (array.new_fixed $arr 3 (i32.const 10) (i32.const 15) (i32.const 17))))
      (return (i32.const -1))
    )
    (local.set $a)
    ;; sum the elements: 10 + 15 + 17 = 42
    (i32.add (i32.add (array.get $arr (local.get $a) (i32.const 0))
                      (array.get $arr (local.get $a) (i32.const 1)))
             (array.get $arr (local.get $a) (i32.const 2)))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result (ref $arr) (ref $c))
      (resume $c (on $e $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; throw array back into the continuation
    (resume_throw $c $e)
  )
)

(assert_return (invoke "main") (i32.const 42))
