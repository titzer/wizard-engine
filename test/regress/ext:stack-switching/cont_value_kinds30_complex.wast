;; Test: complex scenario with nested structs, arrays, and multiple operations
(module
  (type $inner (struct (field $val i32)))
  (type $outer (struct (field $a (ref $inner)) (field $b (ref $inner))))
  (type $arr (array (ref $inner)))

  (type $f1 (func (param (ref $outer)) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (tag $t (param (ref $arr)) (result (ref $inner)))

  (func $process (param (ref $outer)) (result i32)
    (local $sum i32)
    (local $extra (ref $inner))
    ;; sum outer.a.val + outer.b.val
    (local.set $sum
      (i32.add
        (struct.get $inner $val (struct.get $outer $a (local.get 0)))
        (struct.get $inner $val (struct.get $outer $b (local.get 0)))))
    ;; suspend with array, get inner back
    (local.set $extra
      (suspend $t
        (array.new_fixed $arr 2
          (struct.new $inner (i32.const 1))
          (struct.new $inner (i32.const 2)))))
    ;; return sum + extra.val
    (i32.add (local.get $sum) (struct.get $inner $val (local.get $extra)))
  )
  (elem declare func $process)

  (func (export "main") (result i32)
    (local $k (ref $c1))
    (local $a (ref $arr))
    ;; bind the outer struct: inner(10) + inner(12) = 22
    (block $h (result (ref $arr) (ref $c1))
      (resume $c2 (on $t $h)
        (cont.bind $c1 $c2
          (struct.new $outer
            (struct.new $inner (i32.const 10))
            (struct.new $inner (i32.const 12)))
          (cont.new $c1 (ref.func $process))))
      (return)
    )
    (local.set $k)
    (local.set $a)
    ;; sum array elements: 1 + 2 = 3, but return inner(20)
    ;; so final result = 22 + 20 = 42
    (resume $c1 (struct.new $inner (i32.const 20)) (local.get $k))
  )
)

(assert_return (invoke "main") (i32.const 42))
