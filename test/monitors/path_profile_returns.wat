;; Explicit `return` on several different paths, and an if/else where only one arm returns.
;; `return` is modelled as a branch to the function's outermost label, so these functions
;; exercise an EXIT vertex with several incoming edges from mid-body, not just the final `end`.
;;
;; $f: P1 a!=0 (return 1) ; P2 a=0,b!=0 (return 2) ; P3 a=0,b=0 (fallthrough) -> 3 paths
;;     main: P1 once, P2 twice, P3 three times. counts = perm of {1,2,3}, sum 6 = calls.
;; $g: if/else where the then arm returns and the else arm falls through to the tail ->
;;     2 paths. main: taken once, not-taken twice. counts = perm of {1,2}, sum 3 = calls.
(module
  (func $f (export "f") (param $a i32) (param $b i32) (result i32)
    (if (local.get $a) (then (return (i32.const 1))))
    (if (local.get $b) (then (return (i32.const 2))))
    (i32.const 3))
  (func $g (export "g") (param $x i32) (result i32)
    (if (local.get $x)
      (then (return (i32.const 7)))
      (else (nop)))
    (i32.const 8))
  (func (export "main")
    (drop (call $f (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 0) (i32.const 1)))
    (drop (call $f (i32.const 0) (i32.const 1)))
    (drop (call $f (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 0) (i32.const 0)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0))))
)
