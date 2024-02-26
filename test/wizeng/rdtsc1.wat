(module
  (type $fi (func (result i64)))
  (import "wizeng" "rdtsc" (func $rdtsc0 (result i64)))
  (table funcref (elem $rdtsc0 $rdtsc1 $rdtsc2 $rdtsc3 $rdtsc4))

  (func $main (export "main") (result i32)
    (local $before i64)

    (local.set $before (call $rdtsc3))
    (i64.sub (call $rdtsc3) (local.get $before))

    (local.set $before (call $rdtsci (i32.const 0)))
    (i64.sub (call $rdtsci (i32.const 1)) (local.get $before))
    i64.add

    (local.set $before (call $rdtsci (i32.const 2)))
    (i64.sub (call $rdtsci (i32.const 3)) (local.get $before))
    i64.add

    (local.set $before (call $rdtsci (i32.const 0)))
    (i64.sub (call $rdtsci (i32.const 4)) (local.get $before))
    i64.add

    i64.eqz
  )
  (func $rdtsc4 (result i64)
    (call $rdtsc3)
  )
  (func $rdtsc3 (result i64)
    (call $rdtsc2)
  )
  (func $rdtsc2 (result i64)
    (call $rdtsc1)
  )
  (func $rdtsc1 (result i64)
    (return_call $rdtsc0)
  )
  (func $rdtsci (param i32) (result i64)
    (return_call_indirect (type $fi) (local.get 0))
  )
)
