;; BUG 1 (CfgBuilder.v3 mergeCfgBlock, the empty-block splice): edges are silently DROPPED when one
;; instruction merges the same block more than once.
;;
;; Two ADJACENT `br_if`s to the same label. The block between them owns no instruction, so it takes
;; the splice branch, which ends with `from.incoming = null`. The second merge then finds
;; `from.incoming == null` and hits the dead-block guard below, which returns without creating an
;; edge at all.
;;
;; EXPECTED: three vertices out of the block -- the two br_if targets and the fallthrough region
;; holding `i32.const 7 / return`, which is a real path.
;; ACTUAL: the fallthrough region has NO vertex. Both of the entry block's successors point at the
;; same merge block, so counts[0] and counts[1] print the identical route `100 102 101`, and
;; $f(0,0) -- which falls through both br_ifs, returns 7, and is a completed activation -- is
;; recorded nowhere: every count reads 0.
;;
;; INVARIANT VIOLATED: sum(counts) == activations. Here 0 != 1.
(module
  (func $f (export "f") (param i32 i32) (result i32)
    block
      local.get 0
      local.get 1
      br_if 0
      br_if 0
      i32.const 7
      return
    end
    i32.const 9)
  (func (export "main")
    (drop (call $f (i32.const 0) (i32.const 0))))
)
