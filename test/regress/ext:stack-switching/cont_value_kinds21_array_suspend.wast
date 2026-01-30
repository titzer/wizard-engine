;; Test: suspend with array payload, tag returns 2 values extracted from array
(module
  (type $arr (array i32))
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $g (func (param i32 i32) (result i32)))
  (type $d (cont $g))

  (tag $t (param (ref $arr)) (result i32 i32))

  (func $inner (result i32)
    (local $x i32)
    (local $y i32)
    ;; suspend with array [10, 15, 17], expect two values back
    (suspend $t (array.new_fixed $arr 3 (i32.const 10) (i32.const 15) (i32.const 17)))
    (local.set $y)
    (local.set $x)
    ;; x + y = returned values from handler: 25 + 17 = 42
    (i32.add (local.get $x) (local.get $y))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (local $a (ref $arr))
    (local $l (ref $d))
    (block $h (result (ref $arr) (ref $d))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (local.set $l)
    (local.set $a)
    ;; extract elements from array and pass back
    ;; arr[0] + arr[1] = 10 + 15 = 25 as first value
    ;; arr[2] = 17 as second value
    ;; inner does 25 + 17 = 42
    (resume $d
      (i32.add (array.get $arr (local.get $a) (i32.const 0))
               (array.get $arr (local.get $a) (i32.const 1)))
      (array.get $arr (local.get $a) (i32.const 2))
      (local.get $l)
    )
  )
)

(assert_return (invoke "main") (i32.const 42))
