;; Recursion + helper function chain.
;; $recurse calls itself to depth 0, then calls $helper which suspends.
;; Creates interleaved frame pattern: recurse, recurse, ..., recurse, helper.
;; Accumulates triangular number: depth N -> N*(N+1)/2.
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32)))
  (type $cb (cont $fb))
  (tag $ts (param i32) (result i32))

  (func $helper (param i32) (result i32)
    (suspend $ts (local.get 0))
  )

  ;; recurse(n, acc): if n==0, call helper(acc); else recurse(n-1, acc+n)
  (func $recurse (param i32 i32) (result i32)
    (if (result i32) (i32.eqz (local.get 0))
      (then
        (call $helper (local.get 1))
      )
      (else
        (call $recurse
          (i32.sub (local.get 0) (i32.const 1))
          (i32.add (local.get 1) (local.get 0)))
      )
    )
  )

  (func $start3 (result i32)
    (call $recurse (i32.const 3) (i32.const 0))
  )
  (elem declare func $start3)

  (func $start5 (result i32)
    (call $recurse (i32.const 5) (i32.const 0))
  )
  (elem declare func $start5)

  ;; depth 3: acc = 3+2+1 = 6, helper suspends with 6, resume with 6 -> returns 6
  (func (export "test3") (result i32)
    (block (result i32 (ref null $cb))
      (resume $c (on $ts 0) (cont.new $c (ref.func $start3)))
      (return)
    )
    ;; stack: [i32=6, ref $cb] — resume with the payload
    (resume $cb)
  )

  ;; depth 5: acc = 5+4+3+2+1 = 15, helper suspends with 15, resume with 15 -> returns 15
  (func (export "test5") (result i32)
    (block (result i32 (ref null $cb))
      (resume $c (on $ts 0) (cont.new $c (ref.func $start5)))
      (return)
    )
    (resume $cb)
  )
)

(assert_return (invoke "test3") (i32.const 6))
(assert_return (invoke "test5") (i32.const 15))
