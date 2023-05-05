(module
  (import "wizeng" "rdtsc" (func $rdtsc (result i64)))
  (func $main (export "main") (result i64)
    (local $before i64)
    (local.set $before (call $rdtsc))
    (i64.sub (call $rdtsc) (local.get $before))
  )
)
