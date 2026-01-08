;; Test: complex chain - create, bind, suspend, store, bind again, resume
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (tag $yield (result i32))

  (func $complex_func (param $base i32) (result i32)
    ;; base + suspend_result
    (i32.add (local.get $base) (suspend $yield))
  )
  (elem declare func $complex_func)

  (func (export "main") (result i32)
    (local $c (ref null $c2))
    ;; Create and bind base=20, store fully bound continuation
    (local.set $c (cont.bind $c1 $c2 (i32.const 20) (cont.new $c1 (ref.func $complex_func))))
    ;; Resume, will suspend
    (block $on_yield (result (ref $c1))
      (resume $c2 (on $yield $on_yield) (local.get $c))
      (return (i32.const -1))
    )
    ;; Bind the resume value 22 to suspended continuation
    (local.set $c (cont.bind $c1 $c2))
    ;; Final resume, returns 20 + 22 = 42
    (resume $c2 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
