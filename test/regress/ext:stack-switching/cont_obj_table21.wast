;; Test: complex - multiple slots used at different times, some reused, with cont.bind
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (tag $yield (result i32))

  (table $t 3 (ref null $c2))

  (func $add_and_suspend (param $base i32) (result i32)
    (i32.add (local.get $base) (suspend $yield))
  )
  (elem declare func $add_and_suspend)

  (func (export "main") (result i32)
    (local $result i32)
    ;; Slot 0: bind base=10, will add suspend result
    (table.set $t (i32.const 0)
      (cont.bind $c1 $c2 (i32.const 10) (cont.new $c1 (ref.func $add_and_suspend))))
    ;; Slot 1: bind base=20
    (table.set $t (i32.const 1)
      (cont.bind $c1 $c2 (i32.const 20) (cont.new $c1 (ref.func $add_and_suspend))))
    ;; Resume slot 0, it suspends
    (block $h0 (result (ref $c1))
      (resume $c2 (on $yield $h0) (table.get $t (i32.const 0)))
      (return (i32.const -1))
    )
    ;; Store suspended continuation in slot 2
    (table.set $t (i32.const 2) (cont.bind $c1 $c2))
    ;; Resume slot 1, it suspends
    (block $h1 (result (ref $c1))
      (resume $c2 (on $yield $h1) (table.get $t (i32.const 1)))
      (return (i32.const -1))
    )
    ;; Reuse slot 0 for this suspended continuation
    (table.set $t (i32.const 0) (cont.bind $c1 $c2))
    ;; Complete slot 2 (was slot 0's suspended cont) with 5: 10 + 5 = 15
    (local.set $result (resume $c2 (i32.const 5) (table.get $t (i32.const 2))))
    ;; Complete slot 0 (was slot 1's suspended cont) with 7: 20 + 7 = 27
    (local.set $result (i32.add (local.get $result) (resume $c2 (i32.const 7) (table.get $t (i32.const 0)))))
    ;; 15 + 27 = 42
    (local.get $result)
  )
)

(assert_return (invoke "main") (i32.const 42))
