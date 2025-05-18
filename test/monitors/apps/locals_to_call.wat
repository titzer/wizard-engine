(module
    (type $has_locals_type (func))
    (type $call_target_type (func (param i32 i32) (result i32)))
    (type $call_indirect_type (func (result i32)))
    (table 2 2 funcref)
    (elem (i32.const 0) $func)
    (func $has_locals (export "main")
        (local i32 i32)
        (local.set 0 (i32.const 1))
        (local.set 1 (i32.const 2))
        (call $call_target (local.get 0) (local.get 1))
        drop

        (call_indirect (type $call_indirect_type) (i32.const 0))
        drop
    )
    (func $call_target (param i32 i32) (result i32)
        i32.const 0
    )
    (func $func (result i32)
        i32.const 3
    )
)