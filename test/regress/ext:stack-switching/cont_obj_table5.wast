;; Test: resuming same table slot continuation twice traps on second use
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 5 (ref null $c1))

  (func $f42 (result i32) (i32.const 42))
  (elem declare func $f42)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $f42)))
    (drop (resume $c1 (table.get $t (i32.const 0))))
    ;; Second resume should trap - continuation already consumed
    (resume $c1 (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
