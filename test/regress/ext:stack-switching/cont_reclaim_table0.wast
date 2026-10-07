;; Test: continuations held in a table survive stack churn that exceeds the
;; default maximum number of stacks, forcing GC and segment reclamation.
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 8 (ref null $c1))

  (func $ret1 (result i32) (i32.const 1))
  (func $ret10 (result i32) (i32.const 10))
  (elem declare func $ret1 $ret10)

  (func (export "main") (param $n i32) (result i32)
    (local $i i32)
    (local $sum i32)
    (loop $fill
      (table.set $t (local.get $i) (cont.new $c1 (ref.func $ret10)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $fill (i32.lt_u (local.get $i) (i32.const 8)))
    )
    (local.set $i (i32.const 0))
    (loop $l
      (drop (cont.new $c1 (ref.func $ret1)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $i (i32.const 0))
    (loop $use
      (local.set $sum (i32.add (local.get $sum) (resume $c1 (table.get $t (local.get $i)))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $use (i32.lt_u (local.get $i) (i32.const 8)))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 80))
(assert_return (invoke "main" (i32.const 5000)) (i32.const 80))
