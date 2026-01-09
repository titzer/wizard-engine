;; Test: resume_throw on already-consumed local continuation traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $exn)

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $ret42)))
    (drop (resume $c1 (local.get $c)))
    ;; resume_throw should trap - continuation already consumed
    (resume_throw $c1 $exn (local.get $c))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
