;; BUG (PathProfilingMonitor.onParse:47): counts is allocated with ONE SLOT PER STATIC PATH.
;; numPaths is exponential in the branch count, with no cap and no overflow check.
;;
;; 31 sequential if/else gives numPaths = 2^31, which wraps NEGATIVE in Array<int>.new.
;; EXPECTED: the function is profiled, or the monitor declines to profile it.
;; ACTUAL:   !LengthCheckException in PathProfilingMonitor.onParse() [@ 47:64]
;;           -- the engine aborts at PARSE time, before the module ever runs.
;;
;; Neighbouring regimes, same root cause (vary the count below to reproduce):
;;   N=34  numPaths wraps to a small positive -> allocation succeeds, then
;;         !BoundsCheckException in execEdge() [@ 434:68] at RUN time.
;;   N=26  succeeds but allocates a 2^26-int (268 MB) array and prints 67 million lines.
;;   N=18  succeeds but prints 262,280 lines from a 190-byte module.
;;
;; 26-31 branches in one function is ordinary for compiled Wasm. enumPaths guards itself
;; with MAX_PATHS_TO_LIST=1024; this allocation and the onFinish print loop do not.
(module
  (func $f (export "f") (param $x i32)
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
    (if (local.get $x) (then (nop)) (else (nop)))
  )
  (func (export "main") (call $f (i32.const 0))))
