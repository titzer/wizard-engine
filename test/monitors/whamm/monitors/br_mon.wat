(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (memory (export "mem") 2)   ;; no expansion checks
  (global $last_entry (mut i32) (i32.const 0))

  (export "$alloc_br" (func $alloc_br))
  (export "$alloc_br_if" (func $alloc_br_if))
  (export "$alloc_br_table" (func $alloc_br_table))
  (export "wasm:opcode:br($alloc_br(fid, pc))" (func $probe_br))
  (export "wasm:opcode:br_if($alloc_br_if(fid, pc), arg0)" (func $probe_br_if))
  (export "wasm:opcode:br_table($alloc_br_table(fid, pc, imm0), arg0)" (func $probe_br_table))
  (export "wasm:exit" (func $print_entries))

  (data (i32.const 0xc00) "func=")
  (data (i32.const 0xd00) ", pc=")
  (data (i32.const 0xe00) "\n")
  (data (i32.const 0xf00) ", [")
  (data (i32.const 0xf10) ",")
  (data (i32.const 0xf20) "]")

  ;; Table entry
  ;; 0      4      8      12         20
  ;; | func |  pc  |   1  |  # taken |
  (func $alloc_br (param $func i32) (param $pc i32) (result i32)
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

  ;; Table entry
  ;; 0      4      8      12         20         28
  ;; | func |  pc  |   2  |  # taken | # !taken |
  (func $alloc_br_if (param $func i32) (param $pc i32) (result i32)
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
    i32.const 2
    i32.store offset=8

    local.get $entry
    i32.const 28
    i32.add
    global.set $last_entry

    local.get $entry
  )

  ;; Table entry
  ;; n is the number of entries in the table including the default target
  ;; 0      4      8      12
  ;; | func |  pc  |   n  |  0 taken |   ...  | n taken |
  (func $alloc_br_table (param $func i32) (param $pc i32) (param $count i32) (result i32)
    (local $entry i32)
    local.get $count
    i32.const 1
    i32.add
    local.set $count

    global.get $last_entry
    local.set $entry

    local.get $entry
    local.get $func
    i32.store

    local.get $entry
    local.get $pc
    i32.store offset=4

    local.get $entry
    local.get $count
    i32.store offset=8

    i32.const 12
    i32.const 8
    local.get $count
    i32.mul
    i32.add
    local.get $entry
    i32.add
    global.set $last_entry

    local.get $entry
  )

  (func $probe_br (param $entry i32)
    local.get $entry
    local.get $entry
    i64.load offset=12  ;; count of branches taken
    i64.const 1
    i64.add
    i64.store offset=12
  )

  (func $probe_br_if (param $entry i32) (param $arg0 i32)
    (local $offset i32)
    (local.set $offset (i32.add (local.get $entry) (select (i32.const 20) (i32.const 12) (local.get $arg0))))
    local.get $offset
    local.get $offset
    i64.load  ;; count of branches taken
    i64.const 1
    i64.add
    i64.store
  )

  (func $probe_br_table (param $entry i32) (param $arg0 i32)
    (local $max i32)
    (local $addr i32)
    local.get $arg0
    local.get $entry
    i32.load offset=8
    local.tee $max

    i32.ge_u
    (if
      (then
        local.get $max
        i32.const -1
        i32.add
        local.set $arg0
      )
    )

    local.get $arg0
    i32.const 3
    i32.shl

    local.get $entry
    i32.add
    local.tee $addr
    local.get $addr

    i64.load offset=12
    i64.const 1
    i64.add
    i64.store offset=12
  )

  (func $print_entries
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
