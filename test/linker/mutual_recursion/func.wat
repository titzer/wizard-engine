(module
(import "main" "func" (func $f2 (param $1 i32)))
(import "main" "memory" (memory 1))

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

(export "func" (func $f1))
)