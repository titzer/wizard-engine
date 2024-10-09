
(module
(import "func" "func" (func $f2 (param $1 i32)))
(import "wizeng" "puti" (func $puti (param i32)))

(func $f1 (param $1 i32)
    i32.const 0
    local.get $1
    (i32.ne)
    (if
    (then
        i32.const 0
        i32.const 0
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get $1
        i32.const 1
        i32.sub
        call $f2)
    )
)

(func $main
    i32.const 0
    i32.const 10
    i32.const 10
    call $f1    
    i32.const 0
    i32.load
    i32.eq
    i32.div_u
    call $puti
)

(export "func" (func $f1))
(export "main" (func $main))
(memory (export "memory") 1)

)