;; Test: resuming same global continuation twice traps on second use
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $f42 (result i32) (i32.const 42))
  (elem declare func $f42)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $f42)))
    (drop (resume $c1 (global.get $g)))
    ;; Second resume should trap - continuation already consumed
    (resume $c1 (global.get $g))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
