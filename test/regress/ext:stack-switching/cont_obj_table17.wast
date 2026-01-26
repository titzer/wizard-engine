;; Test: batch populate with index-dependent values, resume in loop
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (table $t 10 (ref null $c2))

  (func $square (param i32) (result i32)
    (i32.mul (local.get 0) (local.get 0))
  )
  (elem declare func $square)

  (func $populate
    (local $i i32)
    (local.set $i (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (i32.const 10)))
        ;; Store continuation that computes i^2
        (table.set $t (local.get $i)
          (cont.bind $c1 $c2 (local.get $i) (cont.new $c1 (ref.func $square))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
  )

  (func (export "main") (result i32)
    (local $i i32)
    (local $sum i32)
    (call $populate)
    (local.set $i (i32.const 0))
    (local.set $sum (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (i32.const 10)))
        (local.set $sum (i32.add (local.get $sum) (resume $c2 (table.get $t (local.get $i)))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    ;; Sum of squares 0^2 + 1^2 + ... + 9^2 = 285
    (local.get $sum)
  )
)

(assert_return (invoke "main") (i32.const 285))
