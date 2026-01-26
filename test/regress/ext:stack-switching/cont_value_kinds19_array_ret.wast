;; Test: continuation returning array reference
(module
  (type $arr (array (mut i32)))
  (type $f (func (result (ref $arr))))
  (type $c (cont $f))

  (func $make_arr (result (ref $arr))
    (array.new $arr (i32.const 7) (i32.const 6))
  )
  (elem declare func $make_arr)

  (func (export "main") (result i32)
    (local $a (ref $arr))
    (local $sum i32)
    (local $i i32)
    (local.set $a (resume $c (cont.new $c (ref.func $make_arr))))
    ;; sum all elements: 6 * 7 = 42
    (local.set $i (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (array.len (local.get $a))))
        (local.set $sum (i32.add (local.get $sum) (array.get $arr (local.get $a) (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main") (i32.const 42))
