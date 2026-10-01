;; `select` (a data-flow conditional, NOT control flow -> must stay a single path) and a br_if
;; whose condition is produced by a CALL. The call returns before the br_if executes, so the
;; BoolProbe must read the branch operand off the frame *after* the callee's own exit probe has
;; run and restored the callee register -- registers are per function, so the two must not
;; interfere.
;;
;; $pick     : select only -> 1 path. Called 4 times -> counts[0] = 4
;; $isodd    : straight line -> 1 path. Called 5 times (once per $brif_call) -> counts[0] = 5
;; $brif_call: br_if on (call $isodd n) -> 2 paths. main: taken twice (n odd), not taken
;;             three times (n even). expected counts: perm of {2,3}, sum = 5 = calls
(module
  (func $pick (export "pick") (param $c i32) (param $a i32) (param $b i32) (result i32)
    (select (local.get $a) (local.get $b) (local.get $c)))
  (func $isodd (export "isodd") (param $n i32) (result i32)
    (i32.and (local.get $n) (i32.const 1)))
  (func $brif_call (export "brif_call") (param $n i32) (result i32)
    (local $r i32)
    (block $done
      (br_if $done (call $isodd (local.get $n)))
      (local.set $r (i32.const 5))
    )
    (local.get $r))
  (func (export "main")
    (drop (call $pick (i32.const 0) (i32.const 1) (i32.const 2)))
    (drop (call $pick (i32.const 1) (i32.const 1) (i32.const 2)))
    (drop (call $pick (i32.const 0) (i32.const 3) (i32.const 4)))
    (drop (call $pick (i32.const 1) (i32.const 3) (i32.const 4)))
    (drop (call $brif_call (i32.const 1)))
    (drop (call $brif_call (i32.const 3)))
    (drop (call $brif_call (i32.const 2)))
    (drop (call $brif_call (i32.const 4)))
    (drop (call $brif_call (i32.const 6))))
)
