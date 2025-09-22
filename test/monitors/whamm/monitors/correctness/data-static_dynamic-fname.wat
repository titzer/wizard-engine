(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (func (export "$static_call") (param $start i32) (param $len i32)
        (call $puts (i32.const 13) (i32.const 8)) ;; print "@static\n"
        (call $puts (local.get 0) (local.get 1))  ;; print `fname`
        (call $puts (i32.const 12) (i32.const 1))  ;; print "\n"

        ;; zero out the buffer to keep from dependending on its
        ;; stability between static and dynamic time for the test!
        ;; (the engine has to write the bytes again to the buffer)
        (call $zero_out (local.get 0) (local.get 1))
    )

    (func $simple_probe (export "wasm:opcode:call ($static_call(fname), fname)") (param i32 i32)
        (call $puts (i32.const 21) (i32.const 9)) ;; print "@dynamic\n"
        (call $puts (local.get 0) (local.get 1))  ;; print `fname`
        (call $puts (i32.const 12) (i32.const 1))  ;; print "\n"

        ;; zero out the buffer to keep from dependending on its
        ;; stability between dynamic calls for the test!
        ;; (the engine has to write the bytes again to the buffer)
        (call $zero_out (local.get 0) (local.get 1))
    )

    (func $zero_out (param $start i32) (param $len i32)
        (local $i i32)
        (local $next i32)
        (loop $continue
            ;; store a zero-byte
            i32.const 0
            (i32.add (local.get $start) (local.get $i))
            i32.store8

            ;; i++
            (local.set $i (i32.add (local.get $i) (i32.const 1)))

            ;; next = start + i
            (local.set $next (i32.add (local.get $start) (local.get $i)))

            ;; loop if next < $len
            (i32.lt_u (local.get $next) (local.get $len))
            br_if $continue
        )
    )

    (memory (export "whamm_buffer") 1 1)
    (global (export "whamm_buffer:start") i32 (i32.const 13))
    (global (export "whamm_buffer:max") i32 (i32.const 64))

    (data (i32.const 0) "hello world!\n") ;; len: 13
    (data (i32.const 13) "@static\n")     ;; len: 8
    (data (i32.const 21) "@dynamic\n")    ;; len: 9
)