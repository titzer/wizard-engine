(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (memory (export "mem") 2)   ;; no expansion checks
    (global $last_entry (mut i32) (i32.const 0))

    (data (i32.const 0xd00) ", pc=")
    (data (i32.const 0xe00) "\n")
    (data (i32.const 0xf00) ", [")
    (data (i32.const 0xf10) ",")
    (data (i32.const 0xf20) "]")

    (func (export "$alloc") (param $func i32) (param $pc i32) (result i32)
        (local $entry i32)

        global.get $last_entry
        local.set $entry

        local.get $entry
        local.get $func
        i32.store

        local.get $entry
        local.get $pc
        i32.store offset=4

        local.get $entry
        i32.const 1
        i32.store offset=8

        local.get $entry
        i32.const 20
        i32.add
        global.set $last_entry

        local.get $entry

    )
    (func $count_probe (param $entry i32)
        local.get $entry
        local.get $entry
        i64.load offset=12  ;; count number of times fired
        i64.const 1
        i64.add
        i64.store offset=12

    )
    (func $flush (export "wasm:exit")
        (local $entry i32)
        (local $options i32)
        (block $end_loop
            (loop $loop_entry
                ;; check at the end of memory
                local.get $entry
                global.get $last_entry
                i32.eq
                br_if $end_loop

                (call $puts (i32.const 0xc00) (i32.const 5))
                local.get $entry
                i32.load ;; func
                call $puti
                local.get $entry
                i32.const 4
                i32.add
                local.set $entry

                (call $puts (i32.const 0xd00) (i32.const 5))
                local.get $entry
                i32.load ;; pc
                call $puti
                local.get $entry
                i32.const 4
                i32.add
                local.set $entry

                local.get $entry
                i32.load ;; number of options
                local.get $entry
                i32.const 4
                i32.add
                local.set $entry

                local.set $options

                (call $puts (i32.const 0xf00) (i32.const 3))

                (loop $loop_options

                    local.get $entry
                    i32.load
                    call $puti

                    local.get $entry
                    i32.const 8
                    i32.add
                    local.set $entry

                    local.get $options
                    i32.const -1
                    i32.add

                    local.tee $options

                    i32.eqz
                    (if
                        (then
                            (call $puts (i32.const 0xf20) (i32.const 1))
                        )
                        (else
                            (call $puts (i32.const 0xf10) (i32.const 1))
                            br $loop_options
                        )
                    )
                )

                (call $puts (i32.const 0xe00) (i32.const 1))
                br $loop_entry
            )
        )
    )

)
