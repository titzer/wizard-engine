;; Two different tags, two suspend/resume cycles.
;; Worker first suspends with $tag_a (i32->i32), then with $tag_b (i64->i64).
;; Tests: continuation type changes between resumes.
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  ;; After first suspend (tag_a): continuation takes i32, returns i32
  (type $fa (func (param i32) (result i32)))
  (type $ca (cont $fa))
  ;; After second suspend (tag_b): continuation takes i64, returns i32
  (type $fb (func (param i64) (result i32)))
  (type $cb (cont $fb))

  (tag $tag_a (param i32) (result i32))
  (tag $tag_b (param i64) (result i64))

  (func $worker (result i32)
    (local $a i32)
    (local $b i64)
    ;; First suspend via tag_a: send 1, receive i32 back
    (local.set $a (suspend $tag_a (i32.const 1)))
    ;; Second suspend via tag_b: send i64(a), receive i64 back
    (local.set $b (suspend $tag_b (i64.extend_i32_s (local.get $a))))
    ;; Return a + i32.wrap(b)
    (i32.add (local.get $a) (i32.wrap_i64 (local.get $b)))
  )
  (elem declare func $worker)

  (func (export "main") (result i32)
    (local $ka (ref null $ca))
    (local $kb (ref null $cb))
    ;; Start worker, catch tag_a suspension (payload=1)
    (block (result i32 (ref null $ca))
      (resume $c (on $tag_a 0) (cont.new $c (ref.func $worker)))
      (return)
    )
    (local.set $ka)
    (drop) ;; drop tag_a payload (1)
    ;; Resume with 10, catch tag_b suspension (payload=i64(10))
    (block (result i64 (ref null $cb))
      (resume $ca (on $tag_b 0) (i32.const 10) (local.get $ka))
      (return)
    )
    (local.set $kb)
    (drop) ;; drop tag_b payload (i64(10))
    ;; Resume with i64(20), worker returns 10 + 20 = 30
    (i64.const 20)
    (local.get $kb)
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 30))
