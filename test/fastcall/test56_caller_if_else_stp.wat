;; Stress test: fast handler has an if/else (advances its own stp), then caller
;; uses br_if after the fast call.  If r_stp is not restored after the fast call,
;; the caller's br_if reads from a garbled sidetable entry.
;;
;; fast:abs has an if/else -> 2 sidetable entries (IF entry + ELSE entry).
;; After abs returns via emitFastDispatch, r_stp has been advanced past those entries.
;; The caller then has its own br_if; if stp is stale the branch goes to the wrong place.
(module
  ;; fast handler WITH its own if/else -- advances stp internally
  (func $abs (export "fast:abs") (param i32) (result i32)
    local.get 0
    i32.const 0
    i32.lt_s
    if (result i32)
      i32.const 0
      local.get 0
      i32.sub
    else
      local.get 0
    end)

  ;; caller: loop that calls abs, then br_if to exit based on accumulator.
  ;; The br_if's sidetable entry must be read correctly every iteration.
  ;; If stp drifts by 2 entries (one IF + one ELSE entry from abs) per iteration,
  ;; it will read garbage after the first iteration.
  (func (export "main") (result i32)
    (local $i i32)
    (local $acc i32)
    i32.const -5 local.set $i
    i32.const 0  local.set $acc

    block $exit loop $top
      ;; call fast:abs -- handler has if/else, so stp moves during the call
      local.get $i call $abs
      local.get $acc i32.add local.set $acc

      local.get $i i32.const 1 i32.add local.set $i

      ;; this br_if reads from caller's sidetable -- if stp is wrong, wrong exit
      local.get $i i32.const 6 i32.gt_s br_if $exit
      br $top
    end end

    ;; abs(-5)+abs(-4)+...+abs(6) = 5+4+3+2+1+0+1+2+3+4+5+6 = 36
    local.get $acc i32.const 36 i32.ne)
)
