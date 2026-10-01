;; TWO SELF-LOOPS ON THE SAME BLOCK. A `br_table` sitting directly in a loop header, with two of its
;; labels naming that same loop, produces two distinct self-loop edges from the block to itself.
;;
;; visit_BR_TABLE creates one edge per label with no deduplication -- it must, because placeProbes
;; builds its dispatch array indexed by label position, so collapsing duplicates would shift every
;; later index (see path_profile_dup_labels). When the block holding the br_table *is* the loop
;; header, two labels naming that loop give two edges b -> b.
;;
;; Both arms are the same CFG transition -- whichever is taken, control goes b -> b -- so neither
;; affects the path number. Each edge reports its own line, naming the arm that reaches it.
;;
;; $ms(6): $i counts 1..6. The table index is 2 once $i reaches $n (exit via $out), otherwise
;; $i % 2 -- so arm 1 fires on odd $i (1, 3, 5) and arm 0 on even $i (2, 4), alternating
;; 1,0,1,0,1: `arm 1] = 3` and `arm 0] = 2`, five trips through the block in total.
;; INVARIANT: sum(counts) == activations + non-self backedge executions == 1 + 0 == 1;
;; the 5 self-loop trips are excluded, and reported separately.
(module
  (func $ms (export "ms") (param $n i32) (result i32)
    (local $i i32)
    (block $out
      (loop $L
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_table $L $L $out
          (select (i32.const 2) (i32.rem_u (local.get $i) (i32.const 2))
                  (i32.ge_u (local.get $i) (local.get $n))))))
    (local.get $i))
  (func (export "main")
    (drop (call $ms (i32.const 6))))
)
