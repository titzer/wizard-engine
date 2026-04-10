;; Triple suspend/resume on same continuation.
;; Tests repeated compress/decompress cycles, varying PC each time.
;; Flow: yield(1)->10, yield(12)->20, yield(32)->3, return 34
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32)))
  (type $cb (cont $fb))
  (tag $yield (param i32) (result i32))

  (func $worker (result i32)
    (local $acc i32)
    ;; yield 1, receive 10: acc = 1 + 10 = 11
    (local.set $acc (i32.add (i32.const 1) (suspend $yield (i32.const 1))))
    ;; yield 12, receive 20: acc = 11 + 20 = 31
    (local.set $acc (i32.add (local.get $acc)
      (suspend $yield (i32.add (local.get $acc) (i32.const 1)))))
    ;; yield 32, receive 3: acc = 31 + 3 = 34
    (local.set $acc (i32.add (local.get $acc)
      (suspend $yield (i32.add (local.get $acc) (i32.const 1)))))
    (local.get $acc)
  )
  (elem declare func $worker)

  (func (export "main") (result i32)
    (local $k (ref null $cb))
    ;; Start worker, catch first yield (value 1)
    (block (result i32 (ref null $cb))
      (resume $c (on $yield 0) (cont.new $c (ref.func $worker)))
      (return)
    )
    (local.set $k)
    (drop)
    ;; Resume with 10, catch second yield (value 12)
    (block (result i32 (ref null $cb))
      (resume $cb (on $yield 0) (i32.const 10) (local.get $k))
      (return)
    )
    (local.set $k)
    (drop)
    ;; Resume with 20, catch third yield (value 32)
    (block (result i32 (ref null $cb))
      (resume $cb (on $yield 0) (i32.const 20) (local.get $k))
      (return)
    )
    (local.set $k)
    (drop)
    ;; Final resume with 3, worker returns 34
    (i32.const 3)
    (local.get $k)
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 34))
