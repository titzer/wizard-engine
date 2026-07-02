;; Stress test: fast handler has nested if/else within a loop (many stp advances),
;; called from a caller that has its own loop with br_if.
;; The handler's internal control flow moves stp by multiple entries per call;
;; if not restored, the caller's br_if drifts further each iteration.
(module
  ;; fast handler: loop + br_if + if/else -> multiple stp entries per call
  (func $count_pos (export "fast:count_pos") (param $n i32) (result i32)
    (local $i i32)
    (local $c i32)
    i32.const 0 local.set $i
    i32.const 0 local.set $c
    block $exit loop $top
      local.get $i local.get $n i32.ge_s br_if $exit
      local.get $i i32.const 0 i32.gt_s
      if
        local.get $c i32.const 1 i32.add local.set $c
      end
      local.get $i i32.const 1 i32.add local.set $i
      br $top
    end end
    local.get $c)

  ;; caller: call count_pos in a loop, accumulate, exit via br_if.
  ;; Each call to count_pos advances stp by many entries inside the handler.
  ;; If stp is not restored, the caller's exit br_if reads a wrong sidetable entry.
  (func (export "main") (result i32)
    (local $n i32)
    (local $acc i32)
    i32.const 1 local.set $n
    i32.const 0 local.set $acc

    block $exit loop $top
      local.get $n call $count_pos  ;; count_pos(n) = number of i in [0,n) where i>0 = n-1
      local.get $acc i32.add local.set $acc

      local.get $n i32.const 1 i32.add local.set $n

      ;; caller br_if: must read the right sidetable entry despite handler's stp movement
      local.get $n i32.const 6 i32.gt_s br_if $exit
      br $top
    end end

    ;; n goes 1->6: count_pos(1)=0, count_pos(2)=1, count_pos(3)=2,
    ;;              count_pos(4)=3, count_pos(5)=4, count_pos(6)=5
    ;; acc = 0+1+2+3+4+5 = 15
    local.get $acc i32.const 15 i32.ne)
)
