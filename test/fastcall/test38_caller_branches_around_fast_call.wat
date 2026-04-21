;; Interpreter caller executes branches both before and after a fast call.
;; This stresses r_stp: the interpreter must have an up-to-date sidetable
;; pointer after returning from the fast handler so that subsequent branches
;; in the caller use the correct sidetable entry.
(module
  (func $inc (export "fast:inc") (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func (export "main") (result i32)
    (local $i i32)
    (local $sum i32)
    ;; Loop 1: branches before the fast call accumulates in $i
    block $b1
      loop $l1
        local.get $i
        i32.const 3
        i32.ge_s
        br_if $b1
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $l1
      end
    end
    ;; Fast call
    local.get $i
    call $inc      ;; $i = 3, returns 4
    local.set $i
    ;; Loop 2: branches after the fast call, r_stp must be valid here
    block $b2
      loop $l2
        local.get $i
        i32.const 7
        i32.ge_s
        br_if $b2
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $l2
      end
    end
    local.get $i
    i32.const 7
    i32.ne)
)
