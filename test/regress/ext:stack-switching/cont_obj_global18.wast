;; Test: multiple suspends with global storage
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $yield (result i32))

  (global $g (mut (ref null $c1)) (ref.null $c1))
  (global $sum (mut i32) (i32.const 0))

  (func $multi_suspend (result i32)
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.set $sum (i32.add (global.get $sum) (suspend $yield)))
    (global.get $sum)
  )
  (elem declare func $multi_suspend)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $multi_suspend)))
    ;; First resume, suspends immediately
    (block $h1 (result (ref $c1))
      (resume $c1 (on $yield $h1) (global.get $g))
      (return (i32.const -1))
    )
    (global.set $g)
    ;; Second resume with 10
    (block $h2 (result (ref $c1))
      (resume $c1 (on $yield $h2) (i32.const 10) (global.get $g))
      (return (i32.const -1))
    )
    (global.set $g)
    ;; Third resume with 20
    (block $h3 (result (ref $c1))
      (resume $c1 (on $yield $h3) (i32.const 20) (global.get $g))
      (return (i32.const -1))
    )
    (global.set $g)
    ;; Fourth resume with 12, completes with sum = 42
    (resume $c1 (i32.const 12) (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 42))
