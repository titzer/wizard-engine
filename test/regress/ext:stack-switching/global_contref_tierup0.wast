;; Reference-typed globals holding continuations, whose version must be preserved by the global so
;; that a stale copy of a consumed continuation traps. Accessed from both cold and hot code.
(module
  (type $f (func (param i32) (result i32)))
  (type $c (cont $f))
  (tag $yield (param i32) (result i32))
  (global $k (mut (ref null $c)) (ref.null $c))
  (global $old (mut (ref null $c)) (ref.null $c))
  (global $k2 (mut (ref null $c)) (ref.null $c))
  (global $any (mut contref) (ref.null cont))

  ;; Yields {x + 1}, then returns the value it is resumed with, plus 100.
  (func $body (param $x i32) (result i32)
    (i32.add (suspend $yield (i32.add (local.get $x) (i32.const 1))) (i32.const 100)))
  (elem declare func $body)

  (func $new (global.set $k (cont.new $c (ref.func $body))))
  ;; Resumes {$k} with {x}, saving it in {$old} first. On suspension, stores the new continuation
  ;; in {$k}, {$k2}, and {$any}, and returns the yielded value.
  (func $step (param $x i32) (result i32)
    (global.set $old (global.get $k))
    (block $h (result i32 (ref $c))
      (return (resume $c (on $yield $h) (local.get $x) (global.get $k))))
    (global.set $k)
    (global.set $k2 (global.get $k))
    (global.set $any (global.get $k)))
  (func (export "new") (call $new))
  (func (export "step") (param i32) (result i32) (call $step (local.get 0)))
  (func (export "resume_old") (param i32) (result i32) (resume $c (local.get 0) (global.get $old)))
  (func (export "resume_k2") (param i32) (result i32) (resume $c (local.get 0) (global.get $k2)))
  (func (export "k_is_null") (result i32) (ref.is_null (global.get $k)))
  (func (export "any_is_null") (result i32) (ref.is_null (global.get $any)))
  ;; {n} times: creates a continuation and runs it to the suspension and then to completion.
  (func (export "loop") (param $n i32) (result i32)
    (local $i i32)
    (loop $l
      (call $new)
      (if (i32.ne (call $step (local.get $i)) (i32.add (local.get $i) (i32.const 1))) (then (return (i32.add (local.get $i) (i32.const 1)))))
      (if (i32.ne (call $step (local.get $i)) (i32.add (local.get $i) (i32.const 100))) (then (return (i32.add (local.get $i) (i32.const 1001)))))
      (br_if $l (i32.lt_u (local.tee $i (i32.add (local.get $i) (i32.const 1))) (local.get $n))))
    (i32.const 0))
)

(assert_return (invoke "k_is_null") (i32.const 1))
(assert_return (invoke "any_is_null") (i32.const 1))
(invoke "new")
(assert_return (invoke "step" (i32.const 5)) (i32.const 6))
;; {$old} holds the consumed continuation; {$k}, {$k2}, and {$any} the suspended one.
(assert_return (invoke "any_is_null") (i32.const 0))
(assert_trap (invoke "resume_old" (i32.const 0)) "continuation already consumed")
(assert_return (invoke "resume_k2" (i32.const 7)) (i32.const 107))
;; {$k} was consumed through {$k2}.
(assert_trap (invoke "step" (i32.const 0)) "continuation already consumed")
(assert_return (invoke "loop" (i32.const 100)) (i32.const 0))
(assert_trap (invoke "resume_old" (i32.const 0)) "continuation already consumed")
(invoke "new")
(assert_return (invoke "step" (i32.const 1)) (i32.const 2))
(assert_trap (invoke "resume_old" (i32.const 0)) "continuation already consumed")
(assert_return (invoke "resume_k2" (i32.const 1)) (i32.const 101))
