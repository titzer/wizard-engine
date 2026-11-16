;; Test: suspended continuations held in locals survive stack churn that exceeds
;; the default maximum number of stacks, forcing GC and segment reclamation.
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (type $fi (func (param i32) (result i32)))
  (type $ci (cont $fi))

  (tag $t (result i32))

  (func $ret1 (result i32) (i32.const 1))
  ;; Suspends once, then returns the sum of its argument and the resumed value.
  (func $add (param $x i32) (result i32)
    (i32.add (local.get $x) (suspend $t))
  )
  (elem declare func $ret1 $add)

  (func $churn (param $n i32) (result i32)
    (local $i i32)
    (local $sum i32)
    (loop $l
      (local.set $sum (i32.add (local.get $sum) (resume $c1 (cont.new $c1 (ref.func $ret1)))))
      (drop (cont.new $c1 (ref.func $ret1)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )

  (func (export "main") (param $n i32) (result i32)
    (local $k1 (ref null $ci))
    (local $k2 (ref null $ci))
    (local $sum i32)
    ;; Create two continuations and suspend them mid-execution.
    (block $h1 (result (ref $ci))
      (drop (resume $ci (on $t $h1) (i32.const 100) (cont.new $ci (ref.func $add))))
      (unreachable)
    )
    (local.set $k1)
    (block $h2 (result (ref $ci))
      (drop (resume $ci (on $t $h2) (i32.const 200) (cont.new $ci (ref.func $add))))
      (unreachable)
    )
    (local.set $k2)
    (local.set $sum (call $churn (local.get $n)))
    (i32.add (local.get $sum)
      (i32.add
        (resume $ci (i32.const 1) (local.get $k1))
        (resume $ci (i32.const 2) (local.get $k2))))
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 304))
(assert_return (invoke "main" (i32.const 3000)) (i32.const 3303))
