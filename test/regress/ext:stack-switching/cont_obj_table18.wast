;; Test: batch populate, then second loop tries to resume again (all should trap)
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 5 (ref null $c1))

  (func $ret1 (result i32) (i32.const 1))
  (elem declare func $ret1)

  (func $populate
    (local $i i32)
    (local.set $i (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (i32.const 5)))
        (table.set $t (local.get $i) (cont.new $c1 (ref.func $ret1)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
  )

  (func $consume_all
    (local $i i32)
    (local.set $i (i32.const 0))
    (block $done
      (loop $loop
        (br_if $done (i32.ge_u (local.get $i) (i32.const 5)))
        (drop (resume $c1 (table.get $t (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
  )

  ;; Try to resume slot 0 after all were consumed
  (func (export "main") (result i32)
    (call $populate)
    (call $consume_all)
    ;; This should trap - slot 0's continuation already consumed
    (resume $c1 (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
