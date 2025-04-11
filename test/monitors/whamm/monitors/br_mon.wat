;; --> Output format: <fid>, pc=<pc>, [<counter>*]

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

  ;; Table entry
  ;; 0      4      8      12         20
  ;; | func |  pc  |   1  |  # taken |
  (func $alloc_br (export "$alloc_br") (param $func i32) (param $pc i32) (result i32)
    (local $entry i32)

    (call $check_memsize (i32.const 20))

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
  (func $alloc_br_if (export "$alloc_br_if") (param $func i32) (param $pc i32) (result i32)
    (local $entry i32)

    (call $check_memsize (i32.const 28))

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
  (func $alloc_br_table (export "$alloc_br_table") (param $func i32) (param $pc i32) (param $count i32) (result i32)
    (local $entry i32)
    (local $needed_bytes i32)

    local.get $count
    i32.const 1
    i32.add
    local.set $count

    i32.const 12
    i32.const 8
    local.get $count
    i32.mul
    i32.add
    local.set $needed_bytes

    (call $check_memsize (local.get $needed_bytes))

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

    local.get $needed_bytes
    local.get $entry
    i32.add
    global.set $last_entry

    local.get $entry
  )

  (func $probe_br (export "wasm:opcode:br($alloc_br(fid, pc))") (param $entry i32)
    local.get $entry
    local.get $entry
    i64.load offset=12  ;; count of branches taken
    i64.const 1
    i64.add
    i64.store offset=12
  )

  (func $probe_br_if (export "wasm:opcode:br_if($alloc_br_if(fid, pc), arg0)") (param $entry i32) (param $arg0 i32)
    (local $offset i32)
    (local.set $offset (i32.add (local.get $entry) (select (i32.const 20) (i32.const 12) (local.get $arg0))))
    local.get $offset
    local.get $offset
    i64.load  ;; count of branches taken
    i64.const 1
    i64.add
    i64.store
  )

  (func $probe_br_table (export "wasm:opcode:br_table($alloc_br_table(fid, pc, num_targets), arg0)") (param $entry i32) (param $arg0 i32)
    (local $max i32)
    (local $addr i32)

    local.get $arg0
    local.get $entry
    i32.load offset=8
    i32.const 1
    i32.sub
    local.tee $max ;; max = `num_targets` - 1

    i32.ge_u
    (if
      (then
        ;; if arg0 >= `num_targets` - 1 --> arg0 = `num_targets` - 1
        local.get $max
        local.set $arg0
      )
    )

    ;; account for number of bits used to store each count (8 bits per u64)
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

  (func $print_entries (export "wasm:exit")
    (local $entry i32)
    (local $options i32)

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
        i32.load ;; load the print option
        local.set $options
        local.get $entry
        i32.const 4
        i32.add
        local.set $entry

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
              (call $puts (i32.const 12) (i32.const 2))
              br $loop_entry
            )
            (else
              (call $puts (i32.const 9) (i32.const 1))
              br $loop_options
            )
          )
        )
      )
    )
  )
)
