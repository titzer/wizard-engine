;; Test: suspend/resume cycle storing suspended continuation back to same table slot
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $yield (result i32))

  (table $t 1 (ref null $c1))

  (func $multi_suspend (result i32)
    (i32.add
      (i32.add (suspend $yield) (suspend $yield))
      (suspend $yield))
  )
  (elem declare func $multi_suspend)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $multi_suspend)))
    ;; First resume, suspends
    (block $h1 (result (ref $c1))
      (resume $c1 (on $yield $h1) (table.get $t (i32.const 0)))
      (return (i32.const -1))
    )
    (table.set $t (i32.const 0))
    ;; Second resume with 10, suspends
    (block $h2 (result (ref $c1))
      (resume $c1 (on $yield $h2) (i32.const 10) (table.get $t (i32.const 0)))
      (return (i32.const -1))
    )
    (table.set $t (i32.const 0))
    ;; Third resume with 20, suspends
    (block $h3 (result (ref $c1))
      (resume $c1 (on $yield $h3) (i32.const 20) (table.get $t (i32.const 0)))
      (return (i32.const -1))
    )
    (table.set $t (i32.const 0))
    ;; Fourth resume with 12, completes: 10 + 20 + 12 = 42
    (resume $c1 (i32.const 12) (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 42))
