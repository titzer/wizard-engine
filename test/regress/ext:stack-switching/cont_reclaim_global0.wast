;; Test: a continuation held only in a global survives stack churn that exceeds
;; the default maximum number of stacks, forcing GC and segment reclamation.
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $ret42 (result i32) (i32.const 42))
  (func $ret1 (result i32) (i32.const 1))
  (elem declare func $ret42 $ret1)

  (func (export "main") (param $n i32) (result i32)
    (local $i i32)
    (global.set $g (cont.new $c1 (ref.func $ret42)))
    (loop $l
      (drop (cont.new $c1 (ref.func $ret1)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (resume $c1 (global.get $g))
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 42))
(assert_return (invoke "main" (i32.const 5000)) (i32.const 42))
