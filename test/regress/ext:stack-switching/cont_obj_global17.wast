;; Test: suspend and resume with global, then store suspended continuation back
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $yield (result i32))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func $suspending_func (result i32)
    (i32.add (suspend $yield) (i32.const 2))
  )
  (elem declare func $suspending_func)

  (func (export "main") (result i32)
    (global.set $g (cont.new $c1 (ref.func $suspending_func)))
    (block $on_yield (result (ref $c1))
      (resume $c1 (on $yield $on_yield) (global.get $g))
      (return (i32.const -1))
    )
    ;; Store suspended continuation back to global
    (global.set $g)
    ;; Resume with value 40, result should be 42
    (resume $c1 (i32.const 40) (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 42))
