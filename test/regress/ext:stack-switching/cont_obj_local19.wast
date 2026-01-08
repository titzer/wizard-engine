;; Test: cont.bind on suspended continuation stored in local
(module
  (type $f1 (func (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (tag $yield (param i32) (result i32))

  (func $bind_after_suspend (result i32)
    ;; Suspend with value, expect i32 back, add them
    (i32.add (i32.const 10) (suspend $yield (i32.const 5)))
  )
  (elem declare func $bind_after_suspend)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $bind_after_suspend)))
    (block $on_yield (result i32 (ref $c2))
      (resume $c1 (on $yield $on_yield) (local.get $c))
      (return (i32.const -1))
    )
    ;; Stack has [5 (ref $c2)], bind 32 to it and store in local
    (local.set $c (cont.bind $c2 $c1))
    ;; Yielded value 5 is still on stack, drop it
    drop
    ;; Resume bound continuation, result = 10 + 32 = 42
    (resume $c1 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
