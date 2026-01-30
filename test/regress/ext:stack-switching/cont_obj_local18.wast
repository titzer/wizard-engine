;; Test: multiple suspends with local storage
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (type $f2 (func (param i32) (result i32)))
  (type $c2 (cont $f2))

  (tag $yield (result i32))

  (global $sum (mut i32) (i32.const 0))

  (func $multi_suspend (result i32)
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.get $sum)
  )
  (elem declare func $multi_suspend)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local $d (ref null $c2))
    (local.set $c (cont.new $c1 (ref.func $multi_suspend)))
    ;; First resume, suspends immediately
    (block $h1 (result (ref $c2))
      (resume $c1 (on $yield $h1) (local.get $c))
      (return (i32.const -1))
    )
    (local.set $d)
    ;; Second resume with 10
    (block $h2 (result (ref $c2))
      (resume $c2 (on $yield $h2) (i32.const 10) (local.get $d))
      (return (i32.const -1))
    )
    (local.set $d)
    ;; Third resume with 20
    (block $h3 (result (ref $c2))
      (resume $c2 (on $yield $h3) (i32.const 20) (local.get $d))
      (return (i32.const -1))
    )
    (local.set $d)
    ;; Fourth resume with 12, completes with sum = 42
    (resume $c2 (i32.const 12) (local.get $d))
  )
)

(assert_return (invoke "main") (i32.const 42))
