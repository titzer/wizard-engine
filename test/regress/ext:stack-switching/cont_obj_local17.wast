;; Test: suspend and resume with local, then store suspended continuation back
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (type $f2 (func (param i32) (result i32)))
  (type $c2 (cont $f2))

  (tag $yield (result i32))

  (func $suspending_func (result i32)
    (i32.add (suspend $yield) (i32.const 2))
  )
  (elem declare func $suspending_func)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $suspending_func)))
    (i32.const 40)
    (block $on_yield (result (ref $c2))
      (resume $c1 (on $yield $on_yield) (local.get $c))
      (return (i32.const -1))
    )
    (cont.bind $c2 $c1)
    ;; Store suspended continuation back to local
    (local.set $c)
    ;; Resume with value 40, result should be 42
    (resume $c1 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
