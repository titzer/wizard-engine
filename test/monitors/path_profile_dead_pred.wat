;; Dead predecessor: a CFG block unreachable from ENTRY that still owns an instruction. It used to
;; acquire an outgoing edge into a live block (CfgBuilder.mergeCfgBlock's `from.goto`), which
;; kruskals()'s DFS-from-entry never saw, so it got no TreeEdge and placeCount() hit a null in
;; SpanningTree.edgeMap. Fixed by giving mergeCfgBlock the same reachability guard gotoExit has.
;;
;; Hand-derived expectations:
;;   $both_arms_return       2 paths; the `i32.const 99` tail is dead. 2 calls x!=0 + 3 calls x=0
;;                           -> counts are a permutation of {2,3}, sum 5 = 5 calls.
;;   $both_arms_return_typed 2 paths, called once -> sum 1.
;;   $br_out_dead_tails      1 path (the two local.set tails after `br $a` are dead) -> counts[0]=1.
(module
  (func $both_arms_return (export "a") (param $x i32) (result i32)
    (if (local.get $x)
      (then (return (i32.const 1)))
      (else (return (i32.const 2))))
    (i32.const 99))
  (func $both_arms_return_typed (export "b") (param $x i32) (result i32)
    (if (result i32) (local.get $x)
      (then (return (i32.const 1)))
      (else (return (i32.const 2)))))
  (func $br_out_dead_tails (export "c") (result i32)
    (local $r i32)
    (block $a
      (block $b
        (block $c
          (local.set $r (i32.const 1))
          (br $a)
        )
        (local.set $r (i32.const 2))
      )
      (local.set $r (i32.const 3))
    )
    (local.get $r))
  (func (export "main")
    (drop (call $both_arms_return (i32.const 1)))
    (drop (call $both_arms_return (i32.const 1)))
    (drop (call $both_arms_return (i32.const 0)))
    (drop (call $both_arms_return (i32.const 0)))
    (drop (call $both_arms_return (i32.const 0)))
    (drop (call $both_arms_return_typed (i32.const 1)))
    (drop (call $br_out_dead_tails)))
)
