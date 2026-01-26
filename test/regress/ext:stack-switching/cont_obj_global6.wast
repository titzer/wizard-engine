;; Test: cont.bind on already-resumed global continuation traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $addone (param i32) (result i32)
    (i32.add (local.get 0) (i32.const 1))
  )
  (elem declare func $addone)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $addone)))
    (drop (resume $c1 (i32.const 10) (global.get $g)))
    ;; cont.bind should trap - continuation already consumed by resume
    (resume $c2 (cont.bind $c1 $c2 (i32.const 20) (global.get $g)))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
