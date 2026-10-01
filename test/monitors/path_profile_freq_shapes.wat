;; Frequency accuracy across CONTROL-FLOW SHAPES: one function combining a 4-label br_table, two
;; `br`s to outer labels at different depths (3 and 1), a mid-body `return`, and a fall-through
;; default arm. The rest of the suite covers these shapes only at low call counts and never checks
;; that counts track frequency.
;;
;; 4 paths, one per br_table arm. main makes 60 calls: x=0 x17, x=1 x5, x=2 x23, and the default
;; arm via x=3 x2, x=77 x9, x=255 x4 (out-of-range indices clamp to the default).
;; Hand-derived: default = 2+9+4 = 15, and the three explicit arms 17, 5, 23. Sum 60 = calls.
(module
  (func $g (export "g") (param $x i32) (result i32) (local $r i32)
    (block $out
      (block $d
        (block $c2
          (block $c1
            (block $c0
              (br_table $c0 $c1 $c2 $d (local.get $x)))
            (local.set $r (i32.const 10))
            (br $out))                        ;; br to outer label, depth 3
          (local.set $r (i32.const 20))
          (return (i32.const 21)))            ;; mid-body return
        (local.set $r (i32.const 30))
        (br $out))                            ;; br to outer label, depth 1
      (local.set $r (i32.const 40)))          ;; default arm falls through
    (local.get $r))
  (func (export "main")
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 1)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 2)))
    (drop (call $g (i32.const 3)))
    (drop (call $g (i32.const 3)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 77)))
    (drop (call $g (i32.const 255)))
    (drop (call $g (i32.const 255)))
    (drop (call $g (i32.const 255)))
    (drop (call $g (i32.const 255)))
  ))
