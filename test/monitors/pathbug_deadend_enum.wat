;; BUG (PathProfilingMonitor.enumPaths:561 / walkPath): the MAX_PATHS_TO_LIST guard is measured
;; on numPaths -- EXIT-reaching paths only -- while walkPath enumerates every ENTRY-rooted path.
;;
;; Every path through the nest below dead-ends at a block whose only successor is a backedge.
;; walkPath does `if (e.isBackedge) continue`, so that block is a leaf that never reaches EXIT
;; and contributes nothing to numPaths. numPaths(ENTRY) is therefore 2, the <= 1024 guard
;; passes, and enumPaths runs -- but walkPath still explores 2^N prefixes before discarding
;; them all.
;;
;; EXPECTED: output is two lines, so it should be instant.
;; ACTUAL (measured on this branch, onFinish wall time for a module of ~200 bytes):
;;   N=22 -> 0.14 s   N=26 -> 1.96 s   N=29 -> 15.1 s   for 165 lines of output.
;; Each added branch doubles it; N=40 extrapolates to hours.
;;
;; This is not the output-volume problem (see pathbug_path_explosion) and not recursion
;; depth -- it is unbounded WORK, and the guard written to prevent exactly this measures the
;; wrong quantity.
(module
  (func $f (export "f") (param $x i32)
    (if (local.get $x) (then
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (if (local.get $x) (then (nop)))
      (loop $L (br $L))
    ))
  )
  (func (export "main") (call $f (i32.const 0))))
