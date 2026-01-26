;; Test: multiple reference types in parameters and returns
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $arr (array i32))
  (type $f (func (param (ref $point) (ref $arr)) (result i32)))
  (type $c (cont $f))

  (func $sum_all (param (ref $point) (ref $arr)) (result i32)
    (local $sum i32)
    (local $i i32)
    ;; sum struct fields
    (local.set $sum (i32.add
      (struct.get $point $x (local.get 0))
      (struct.get $point $y (local.get 0))))
    ;; sum array elements
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (array.len (local.get 1))))
        (local.set $sum (i32.add (local.get $sum) (array.get $arr (local.get 1) (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    (local.get $sum)
  )
  (elem declare func $sum_all)

  (func (export "main") (result i32)
    ;; point(10,12) + array[5,7,8] = 22 + 20 = 42
    (resume $c
      (struct.new $point (i32.const 10) (i32.const 12))
      (array.new_fixed $arr 3 (i32.const 5) (i32.const 7) (i32.const 8))
      (cont.new $c (ref.func $sum_all)))
  )
)

(assert_return (invoke "main") (i32.const 42))
