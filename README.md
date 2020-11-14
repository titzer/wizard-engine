# Wizard: An advanced Wasm Engine for Research

The Wizard Engine is a lightweight WebAssembly virtual machine designed for teaching and research.
Its implementation is designed to be flexible and easy to grasp, ideal for experimentation and modification.
Built with the future in mind, it is written in a fast and lightweight safe, garbage-collected programming language, [Virgil](https://github.com/titzer/virgil).

## Features ##

Wizard supports all of the currently specified features, including:

  * Wasm MVP features
  * Multi-value extension (now standard)
  * Reference types (now standard)
  * Bulk-memory operations (now standard)
  * Tail-call
  * GC
  * Multi-memory
  * Function References
  * Relaxed section order
  * Type imports (wip)
  * Atomics (wip)
  * Type imports (wip)
  * Exception handling (wip)

Wizard can run testcases specified in the .bin.wast format, like the specification tests that are part of the Wasm spec repo, or proposal repos.

Wizard supports a small embedding environment suitable for running simple programs.
It does not currently, but will eventually support WASI.

## Supported Targets ##

Because Wizard is written in Virgil, it runs on all the targets that Virgil currently supports, including

* x86-darwin : 32-bit Darwin kernels (MacOS)
* x86-linux : 32-bit Linux kernels
* jar : JAR files for the Java Virtual Machine
* wasm : WebAssembly module for any Wasm engine (!)

In fact, because Wizard can itself be compiled to Wasm, it fully self-hosts!

## Implementation ##

Wizard has primarily focused on flexibility and readability.
As opposed to engines focused on performance and written in more verbose languages, the core engine is just a few thousand lines of code.
It currently has only one execution tier: a low-overhead interpreter.
A three tier architecture (interpreter, baseline compiler, and optimizing compiler) is planned.

Wizard compiles to a very small binary of just a few hundred kilobytes.
Development with Wizard is very quick turnaround, as a full production build takes less than a second, and of course, it can run under Virgil's interpreter, too.

## Documentation ##

The most up-to-date documentation is, as always, the implementation in this repository!

### Research Projects

Currently, Wizard supports two closely related research projects:

 * Generalized import system, a Wasm extension for expressing source-level constructs in Wasm
 * Jawa, a Java virtual machine runtime system implementation using the generalized import sytsem

## License

Licensed under the Apache License, Version 2.0. ([rt/LICENSE](LICENSE) or https://www.apache.org/licenses/LICENSE-2.0)
