;; Minimal counterexample for SPC_PINNED_REGISTER_SPILL_BUG.md: exactly the
;; control-flow/local shape virgil's wasm-wave backend emits for a 2-local
;; "popcount"-style loop (early `return` inside an `if` nested in a `loop`,
;; with an `unreachable` tail after the loop). With --fast-functions=true this
;; crashes the engine at *load* time (eager AOT compile of the fast: export)
;; with a NullCheckException in SinglePassCompiler.emitSpill(), regardless of
;; whether "main" ever calls it. A version of this function with only 1 local
;; live (instead of 2) does not crash -- see repro history in the bug report.
(module
  (func $popcount (export "fast:popcount") (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    local.get 0
    local.set 1
    loop
      local.get 1
      i32.eqz
      if
        local.get 2
        return
      else
        local.get 2
        local.get 1
        i32.const 1
        i32.and
        i32.add
        local.get 1
        i32.const 1
        i32.shr_u
        local.set 1
        local.set 2
        br 1
      end
    end
    unreachable
  )
  (func (export "main") (result i32)
    i32.const 42      ;; popcount(42) = popcount(0b101010) = 3
    call $popcount
    i32.const 3
    i32.ne)
)
