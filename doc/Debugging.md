# Debugging the Wizard Engine

The Wizard Engine has a few tools for debugging its low-level code, specifically for its fast-interpreter and JIT compiler.

## `--debug` Build

Wizard's build script accepts a `--debug` flag that produces a debug build. When enabled, the following features are turned on:
- Validation (check) monitors
- Symbols in JIT compiled modules

### Engine Diagnostic Monitors

Engine diagnostic monitors check for invariants during Wizard's execution and verifies that Wizard's internal states (e.g., memory layout, guards, etc.) are correct.

The debugging flag `Debug.diagnostic` in [Debug](/src/engine/Debug.v3) enables verbose validation.

### JIT Symbols

TODO

## Debugging with GDB

The [GDB startup script](/gdb/.gdb_init) contains a few helper commands for debugging Wizard with GDB:
- `printstack <addr>`: prints the interpreter frame stored in memory at `rsp=<addr>`
- `checkprot <addr>`: searches `/proc/self/maps` for the memory region that contains `<addr>`
