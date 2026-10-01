;; if/else nested three levels deep, each nested inside the *then* arm of its parent. Existing
;; tests only nest two deep (demo_paths $nested_if). Pins that path numbering stays compact
;; when the DAG is deep and unbalanced rather than a chain of sequential diamonds.
;;
;; Paths: P1 x=0 ; P2 x=1,y=0 ; P3 x=1,y=1,z=0 ; P4 x=1,y=1,z=1  -> 4 paths
;; main takes P1 once, P2 twice, P3 three times, P4 four times.
;; expected counts: a permutation of {1,2,3,4}, sum = 10 = calls to $f
(module
  (func $f (export "f") (param $x i32) (param $y i32) (param $z i32) (result i32)
    (if (result i32) (local.get $x)
      (then
        (if (result i32) (local.get $y)
          (then
            (if (result i32) (local.get $z)
              (then (i32.const 1))
              (else (i32.const 2))))
          (else (i32.const 3))))
      (else (i32.const 4))))
  (func (export "main")
    (drop (call $f (i32.const 0) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1))))
)
