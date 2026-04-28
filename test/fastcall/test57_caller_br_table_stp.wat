;; Stress test: fast handler has br_table (advances stp by count+1 entries),
;; then caller has br_if after the fast call.
;; br_table in the fast handler leaves stp well past the handler's sidetable.
;; Any residue corrupts the caller's next branch lookup.
(module
  ;; fast handler with br_table: maps 0->10, 1->20, 2->30, else->0
  ;; br_table produces N+1 sidetable entries (one per arm + default)
  (func $dispatch (export "fast:dispatch") (param $n i32) (result i32)
    (block $b2
      (block $b1
        (block $b0
          local.get $n
          br_table $b0 $b1 $b2 $b2)
        i32.const 10 return)
      i32.const 20 return)
    i32.const 30)

  ;; caller: call dispatch repeatedly; after each call use br_if.
  ;; The br_if's stp must survive the br_table inside dispatch intact.
  (func (export "main") (result i32)
    (local $i i32)
    (local $acc i32)
    i32.const 0 local.set $i
    i32.const 0 local.set $acc

    block $exit loop $top
      local.get $i i32.const 3 i32.rem_u  ;; cycle: 0,1,2,0,1,2,...
      call $dispatch
      local.get $acc i32.add local.set $acc

      local.get $i i32.const 1 i32.add local.set $i

      ;; caller br_if: stp must point at THIS entry, not inside dispatch's br_table
      local.get $i i32.const 6 i32.ge_s br_if $exit
      br $top
    end end

    ;; 6 iterations: dispatch(0)=10, dispatch(1)=20, dispatch(2)=30,
    ;;               dispatch(0)=10, dispatch(1)=20, dispatch(2)=30
    ;; sum = 10+20+30+10+20+30 = 120
    local.get $acc i32.const 120 i32.ne)
)
