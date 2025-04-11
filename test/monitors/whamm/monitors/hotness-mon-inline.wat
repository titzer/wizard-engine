;; === Whamm Hotness Monitor ===
;; Instrument EVERY location in the application and track each
;; time it is executed dynamically with an in-memory counter.

;; --> Output format: <fid>, pc=<pc>, [<counter>]

(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (memory (export "mem") 2)   ;; no expansion checks
    (global $first_entry (mut i32) (i32.const 14))
    (global $last_entry (mut i32) (i32.const 14))

    (data (i32.const 0) "fid=")
    (data (i32.const 4) ", pc=")
    (data (i32.const 9) ", [")
    (data (i32.const 12) "]\n")

    ;; check whether we should grow memory based on the needed amount
    (func $check_memsize (param $bytes_needed i32)
        (local $bytes_per_page i32)
        (local $curr_pages i32)
        (local $max_needed_addr i32)

        (local.set $bytes_per_page (i32.const 65_536))
        (local.set $curr_pages (memory.size))

        (local.set $max_needed_addr (i32.add (global.get $last_entry) (local.get $bytes_needed)))

        (if (i32.lt_u (i32.mul (local.get $bytes_per_page) (local.get $curr_pages)) (local.get $max_needed_addr))
            (then
                i32.const 1
                memory.grow
                drop
            )
        )
    )

    (func (export "$alloc") (param $func i32) (param $pc i32) (result i32)
        (local $entry i32)

        (call $check_memsize (i32.const 16))

        global.get $last_entry
        local.set $entry

        local.get $entry
        local.get $func
        i32.store

        local.get $entry
        local.get $pc
        i32.store offset=4

        local.get $entry
        i32.const 16
        i32.add
        global.set $last_entry

        local.get $entry
    )
    (func $flush (export "wasm:exit")
        (local $entry i32)

        (call $puts (i32.const 13) (i32.const 1))
        (local.set $entry (global.get $first_entry))
        (block $end_loop
            (loop $loop_entry
                ;; check at the end of memory
                local.get $entry
                global.get $last_entry
                i32.eq
                br_if $end_loop

                (call $puts (i32.const 0) (i32.const 4))
                local.get $entry
                i32.load ;; func
                call $puti
                local.get $entry
                i32.const 4
                i32.add
                local.set $entry

                (call $puts (i32.const 4) (i32.const 5))
                local.get $entry
                i32.load ;; pc
                call $puti
                local.get $entry
                i32.const 4
                i32.add
                local.set $entry

                (call $puts (i32.const 9) (i32.const 3))

                local.get $entry
                i32.load
                call $puti

                local.get $entry
                i32.const 8
                i32.add
                local.set $entry
                (call $puts (i32.const 12) (i32.const 2))
                br $loop_entry
            )
        )
    )
    (func (export "wasm:opcode:unreachable ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:nop ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:block ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:loop ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:if ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:else ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:try ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:catch ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:throw ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:rethrow ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:throw_ref ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:end ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_if ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_table ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:return ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:call ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:call_indirect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:return_call ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:return_call_indirect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:call_ref ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:return_call_ref ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:delegate ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:catch_all ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:drop ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:select ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:try_table ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:local.get ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:local.set ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:local.tee ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:global.get ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:global.set ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.get ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.set ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.load8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.load8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.load16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.load16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.load32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.store8 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.store16 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.store8 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.store16 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.store32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.size ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.grow ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.const ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.const ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.const ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.const ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.eqz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.lt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.gt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.le_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.ge_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.eqz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.lt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.gt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.le_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.ge_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.lt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.gt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.le ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.ge ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.lt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.gt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.le ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.ge ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.clz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.ctz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.popcnt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.div_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.div_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.rem_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.rem_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.and ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.or ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.xor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.rotl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.rotr ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.clz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.ctz ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.popcnt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.div_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.div_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.rem_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.rem_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.and ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.or ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.xor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.rotl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.rotr ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.ceil ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.floor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.trunc ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.nearest ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.sqrt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.div ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.copysign ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.ceil ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.floor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.trunc ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.nearest ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.sqrt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.div ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.copysign ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.wrap_i64 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_f32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_f32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_f64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_f64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.extend_i32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.extend_i32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_f32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_f32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_f64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_f64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.convert_i32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.convert_i32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.convert_i64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.convert_i64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.demote_f64 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.convert_i32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.convert_i32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.convert_i64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.convert_i64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.promote_f32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.reinterpret_f32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.reinterpret_f64 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32.reinterpret_i32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64.reinterpret_i64 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.extend8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.extend16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.extend8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.extend16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.extend32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.is_null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.func ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.as_non_null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_on_null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_on_non_null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.new ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.new_default ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.get ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.get_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.get_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:struct.set ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.new ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.new_default ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.new_fixed ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.new_data ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.new_elem ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.get ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.get_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.get_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.set ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.len ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.fill ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.copy ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.init_data ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:array.init_elem ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.test ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.test null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.cast ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.cast null ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_on_cast ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:br_on_cast_fail ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:any.convert_extern ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:extern.convert_any ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:ref.i31 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i31.get_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i31.get_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_sat_f32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_sat_f32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_sat_f64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.trunc_sat_f64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_sat_f32_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_sat_f32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_sat_f64_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.trunc_sat_f64_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.init ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:data.drop ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.copy ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.fill ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.init ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:elem.drop ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.copy ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.grow ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.size ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:table.fill ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_8x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_8x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_16x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_16x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_32x2_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_32x2_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_8_splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_16_splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_32_splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_64_splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_32_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_64_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_8_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_16_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_32_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.load_64_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.store_8_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.store_16_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.store_32_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.store_64_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.const ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.shuffle ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.extract_lane_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.extract_lane_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extract_lane_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extract_lane_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extract_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extract_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.extract_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.extract_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.replace_lane ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.swizzle ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.splat ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.lt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.gt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.le_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.ge_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.lt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.gt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.le_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.ge_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.lt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.gt_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.le_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.ge_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.lt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.gt_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.le_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.ge_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.lt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.gt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.le ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.ge ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.eq ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.ne ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.lt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.gt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.le ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.ge ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.not ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.and ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.andnot ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.or ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.xor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.bitselect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:v128.anytrue ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.demote_f64x2_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.promote_low_f32x4 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.popcnt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.alltrue ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.bitmask ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.narrow_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.narrow_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.add_sat_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.add_sat_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.sub_sat_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.sub_sat_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.min_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.min_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.max_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.max_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.avgr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extaddpairwise_i8x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extaddpairwise_i8x16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.q15mulrsat_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.alltrue ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.bitmask ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.narrow_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.narrow_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extend_low_i8x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extend_high_i8x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extend_low_i8x16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extend_high_i8x16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.add_sat_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.add_sat_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.sub_sat_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.sub_sat_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.min_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.min_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.max_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.max_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.avgr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extmul_low_i8x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extmul_high_i8x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extmul_low_i8x16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.extmul_high_i8x16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extaddpairwise_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extaddpairwise_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.alltrue ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.bitmask ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extend_low_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extend_high_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extend_low_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extend_high_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.min_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.min_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.max_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.max_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.dot_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extmul_low_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extmul_high_i16x8_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extmul_low_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.extmul_high_i16x8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.alltrue ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.bitmask ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extend_low_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extend_high_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extend_low_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extend_high_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.shl ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.shr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.shr_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extmul_low_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extmul_high_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extmul_low_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.extmul_high_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.ceil ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.floor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.trunc ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.nearest ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.sqrt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.div ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.pmin ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.pmax ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.ceil ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.floor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.trunc ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.nearest ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.abs ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.neg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.sqrt ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.mul ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.div ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.pmin ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.pmax ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.trunc_sat_f32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.trunc_sat_f32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.convert_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.convert_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.trunc_sat_f64x2_s_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.trunc_sat_f64x2_u_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.convert_low_i32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.convert_low_i32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.relaxed_swizzle ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_trunc_f32x4_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_trunc_f32x4_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_trunc_f64x2_s_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_trunc_f64x2_u_zero ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.relaxed_madd ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.relaxed_nmadd ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.relaxed_madd ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.relaxed_nmadd ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i8x16.relaxed_laneselect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.relaxed_laneselect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_laneselect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64x2.relaxed_laneselect ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.relaxed_min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f32x4.relaxed_max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.relaxed_min ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:f64x2.relaxed_max ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.relaxed_q15mulr_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i16x8.relaxed_dot_i8x16_i7x16_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32x4.relaxed_dot_i8x16_i7x16_add_s ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.atomic.notify ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.atomic.wait32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:memory.atomic.wait64 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:atomic.fence ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.load ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.load8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.load16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.load8_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.load16_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.load32_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.store ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.store8 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.store16 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.store8 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.store16 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.store32 ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.add ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.add_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.add_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.add_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.add_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.add_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.sub ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.sub_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.sub_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.sub_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.sub_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.sub_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.and ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.and ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.and_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.and_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.and_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.and_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.and_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.or ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.or ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.or_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.or_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.or_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.or_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.or_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.xor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.xor ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.xor_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.xor_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.xor_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.xor_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.xor_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.xchg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.xchg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.xchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.xchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.xchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.xchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.xchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw.cmpxchg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw.cmpxchg ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw8.cmpxchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i32.atomic.rmw16.cmpxchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw8.cmpxchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw16.cmpxchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:i64.atomic.rmw32.cmpxchg_u ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:cont.new ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:cont.bind ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:suspend ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:resume ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:resume.throw ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
    (func (export "wasm:opcode:switch ($alloc(fid, pc))") (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=8  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=8
    )
)
