;; Test: batch populate table and resume each in a loop
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 10 (ref null $c1))

  (func $ret1 (result i32) (i32.const 1))
  (elem declare func $ret1)

  (func $populate
    (local $i i32)
    (local.set $i (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (i32.const 10)))
        (table.set $t (local.get $i) (cont.new $c1 (ref.func $ret1)))
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
        (local.set $sum (i32.add (local.get $sum) (resume $c1 (table.get $t (local.get $i)))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main") (i32.const 10))
