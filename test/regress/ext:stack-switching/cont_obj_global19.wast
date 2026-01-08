;; Test: cont.bind on suspended continuation stored in global
(module
  (type $f1 (func (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (tag $yield (param i32) (result i32))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $bind_after_suspend (result i32)
    ;; Suspend with value, expect i32 back, add them
    (i32.add (i32.const 10) (suspend $yield (i32.const 5)))
  )
  (elem declare func $bind_after_suspend)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $bind_after_suspend)))
    (block $on_yield (result i32 (ref $c2))
      (resume $c1 (on $yield $on_yield) (global.get $g))
      (return (i32.const -1))
    )
    ;; Stack has [5 (ref $c2)], bind 32 to it and store in global
    (global.set $g (cont.bind $c2 $c1 (global.get $g)))
    ;; Yielded value 5 is still on stack, drop it
    drop
    ;; Resume bound continuation, result = 10 + 32 = 42
    (resume $c1 (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 42))
