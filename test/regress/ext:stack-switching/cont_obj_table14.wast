;; Test: resume_throw on already-consumed table slot traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $exn)

  (table $t 5 (ref null $c1))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $ret42)))
    (drop (resume $c1 (table.get $t (i32.const 0))))
    ;; resume_throw should trap - continuation already consumed
    (resume_throw $c1 $exn (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
