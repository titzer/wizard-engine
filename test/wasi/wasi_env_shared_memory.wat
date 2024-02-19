(module
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "memory" (memory (;0;) 17 16384 shared))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h43f24755331e74ebE (type 0)))
  (func $_start (result i32) (memory.size))
  (export "_start" (func $_start))
)
