;; Test: resume_throw on already-consumed global continuation traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $exn)

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $ret42)))
    (drop (resume $c1 (global.get $g)))
    ;; resume_throw should trap - continuation already consumed
    (resume_throw $c1 $exn (global.get $g))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
