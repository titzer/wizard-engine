;; Test: reuse same table slot multiple times with different continuations
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 1 (ref null $c1))

  (func $ret10 (result i32) (i32.const 10))
  (func $ret20 (result i32) (i32.const 20))
  (func $ret12 (result i32) (i32.const 12))
  (elem declare func $ret10 $ret20 $ret12)

  (func (export "main") (result i32)
    (local $sum i32)
    ;; First use of slot 0
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $ret10)))
    (local.set $sum (resume $c1 (table.get $t (i32.const 0))))
    ;; Reuse slot 0 with different continuation
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $ret20)))
    (local.set $sum (i32.add (local.get $sum) (resume $c1 (table.get $t (i32.const 0)))))
    ;; Reuse slot 0 again
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $ret12)))
    (local.set $sum (i32.add (local.get $sum) (resume $c1 (table.get $t (i32.const 0)))))
    ;; 10 + 20 + 12 = 42
    (local.get $sum)
  )
)

(assert_return (invoke "main") (i32.const 42))
