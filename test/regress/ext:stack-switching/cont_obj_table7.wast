;; Test: cont.bind twice on same table slot traps on second use
(module
  (type $f1 (func (param i32 i32) (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $f3 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))

  (table $t 5 (ref null $c1))

  (func $add (param i32 i32) (result i32)
    (i32.add (local.get 0) (local.get 1))
  )
  (elem declare func $add)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $add)))
    ;; First bind consumes continuation
    (drop (cont.bind $c1 $c2 (i32.const 10) (table.get $t (i32.const 0))))
    ;; Second bind should trap - continuation already consumed
    (resume $c3 (cont.bind $c1 $c3 (i32.const 20) (i32.const 30) (table.get $t (i32.const 0))))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
