;; Test: resume with array argument
(module
  (type $arr (array i32))
  (type $f (func (param (ref $arr)) (result i32)))
  (type $c (cont $f))

  (func $arr_sum (param (ref $arr)) (result i32)
    (local $sum i32)
    (local $i i32)
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (array.len (local.get 0))))
        (local.set $sum (i32.add (local.get $sum) (array.get $arr (local.get 0) (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    (local.get $sum)
  )
  (elem declare func $arr_sum)

  (func (export "main") (result i32)
    ;; array [10, 12, 20] sums to 42
    (resume $c
      (array.new_fixed $arr 3 (i32.const 10) (i32.const 12) (i32.const 20))
      (cont.new $c (ref.func $arr_sum)))
  )
)

(assert_return (invoke "main") (i32.const 42))
