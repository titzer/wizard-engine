;; Test: exnrefs held in locals and operands of suspended (and compressed) stacks survive
;; garbage collection, forced by allocating many objects while the stacks are suspended.
(module
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))
  (type $box (struct (field i32)))
  (type $arr (array (mut (ref null $box))))

  (tag $yield)
  (tag $exn (param i32))
  (table $t 0 (ref null $c_i))
  (global $keep (mut (ref null $arr)) (ref.null $arr))

  ;; Catches an exception carrying {x} into a local, and another carrying {x + 1} onto the
  ;; operand stack, suspends, then rethrows both and returns the sum of their payloads.
  (func $worker (param $x i32) (result i32)
    (local $e exnref) (local $sum i32)
    (block $h (result i32 exnref)
      (try_table (catch_ref $exn $h) (throw $exn (local.get $x)))
      (unreachable))
    (local.set $e)
    (drop)
    (block $h2 (result i32 exnref)
      (try_table (catch_ref $exn $h2) (throw $exn (i32.add (local.get $x) (i32.const 1))))
      (unreachable))
    ;; operand stack: [i32 exnref]
    (suspend $yield)
    (local.set $sum
      (block $c (param exnref) (result i32)
        (try_table (param exnref) (catch $exn $c) (throw_ref))
        (unreachable)))
    (drop)
    (local.set $sum (i32.add (local.get $sum)
      (block $c2 (result i32)
        (try_table (catch $exn $c2) (throw_ref (local.get $e)))
        (unreachable))))
    (local.get $sum)
  )
  (elem declare func $worker)

  ;; Allocates {n} small objects, keeping the last batch alive to make the GC copy.
  (func $churn (param $n i32)
    (local $a (ref null $arr)) (local $i i32)
    (local.set $a (array.new_default $arr (local.get $n)))
    (loop $l
      (array.set $arr (local.get $a) (local.get $i) (struct.new $box (local.get $i)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (global.set $keep (local.get $a))
  )

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i))
    (drop (table.grow $t (ref.null $c_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $c_i))
        (drop (resume $ci_i (on $yield $h) (local.get $i) (cont.new $ci_i (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (call $churn (i32.const 100))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (call $churn (i32.const 100000))
    (loop $finish
      (local.set $i (i32.sub (local.get $i) (i32.const 1)))
      (local.set $sum (i64.add (local.get $sum)
        (i64.extend_i32_u (resume $c_i (table.get $t (local.get $i))))))
      (call $churn (i32.const 100))
      (br_if $finish (local.get $i))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i64.const 1))
(assert_return (invoke "main" (i32.const 3000)) (i64.const 9000000))
