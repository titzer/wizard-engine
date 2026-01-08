;; Test: suspend with array payload
(module
  (type $arr (array i32))
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $t (param (ref $arr)) (result i32))

  (func $inner (result i32)
    (i32.add (i32.const 40) (suspend $t (array.new_fixed $arr 2 (i32.const 1) (i32.const 2))))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (local $a (ref $arr))
    (block $h (result (ref $arr) (ref $c))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (local.set $a)
    ;; sum array and return: 1 + 2 = 3, but we'll pass 2 back
    (resume $c (i32.const 2))
  )
)

(assert_return (invoke "main") (i32.const 42))
