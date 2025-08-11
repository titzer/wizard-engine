# <img src="https://github.com/titzer/wizard-engine/blob/master/logo/wizard_logo.svg?raw=true" width="32pt"> The Wizard Research Engine



The Wizard Research Engine is a fully-featured WebAssembly engine (virtual machine) designed for teaching and research.
Its implementation is designed to be flexible and easy to grasp, ideal for instrumentation, experimentation and modification.
Built with the future in mind, it is written in a fast and lightweight, safe, garbage-collected programming language, [Virgil](https://github.com/titzer/virgil).

## Feature Support ##

Wizard supports most Wasm standard features, including all of Wasm 2.0.
Newer features are under development and vary in their support in the different execution tiers, which include the V3 interpreter (v3-int), the fast interpreter (fast-int) and the single-pass compiler (spc).

| Feature / Proposal | load | v3-int | fast-int | spc |
| ------------------ | ------ | ------ | -------- | --- |
| Wasm MVP  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| multi-value  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| reference-types  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| bulk-memory  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| SIMD  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| tail-call  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| multi-memory  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| gc | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| function-references  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| extended-const  | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| legacy EH  | &#x2705;| &#x2705; |  &#9745; | &#9745; |
| exception-handling  | &#x2705;| &#x2705; | &#x2705; | &#x2705; |
| relaxed-simd |  &#x2705; |  &#x2705; | &#x2705; | &#x2705; |
| custom-page-sizes  | &#x2705;| &#x2705; |  |  |
| stack-switching  | &#x2705;| &#x2705; | &#x2705; |  &#x2705; |
| threads  | &#x2705;| &#9745; | &#9745; |  |
| memory64 | &#x2705;| &#x2705; | | |

Wizard can run testcases specified in the `.bin.wast format`, like the specification tests that are part of the Wasm spec repo and proposal repos.
Wizard supports a small embedding environment suitable for running simple programs.
[WASI](https://github.com/WebAssembly/wasi) support in Wizard is a work in progress.

## Supported Targets ##

Because Wizard is written in [Virgil](https://github.com/titzer/virgil), it runs on all the targets that Virgil currently supports, including:

* x86-darwin : 32-bit Darwin kernels (MacOS)
* x86-linux : 32-bit Linux kernels
* x86-64-linux : 64-bit Linux kernels
* jar : JAR files for the Java Virtual Machine
* wasm : WebAssembly module for any Wasm engine (!)

In fact, because Wizard can itself be compiled to Wasm, it fully self-hosts.
This means that Wizard can run a copy of itself compiled to Wasm!

Wizard has special support on the `x86-64-linux` target, with a fast, hand-written interpreter, nearly 40x faster than the simple interpreter, and as fast as interpreter tiers in other engines.

## Design and Implementation ##

Wizard is remarkably simple for its feature set!
Its architecture is focused on flexibility and readability, making it suitable for language and VM research, rather than ultimate performance.
That makes it better suited to research and experimentation.

Wizard is implemented in Virgil, a fast and lightweight programming language.
Learning Virgil is easy; you can pick it up in no time!
Using Virgil allows Wizard to compile to a single native binary of about one megabyte.
Development with Wizard is very quick turnaround, as a full production build takes less than a second.
Virgil is garbage-collected, thus Wasm proposals such as GC reuse the collector of the underlying language, which keeps Wizard small and easy to understand.

Wizard is the first Wasm engine to do fast in-place interpretation of Wasm bytecode.
Wizard currently has two interpreters:

  * an easy-to-read, straightforward interpreter which runs on all the supported targets
  * a fast interpreter in hand-written x86-64 assembly, which only runs on x86-64-linux

Both interpreters execute bytecode in-place (no code rewriting) for simplicity and low memory overhead.
Later, Wizard will have a baseline compiler and optimization compiler, to match production engines' performance.

## Documentation ##

The most up-to-date documentation is, as always, the implementation in this repository!

See the [Design](Design.md) for a closer look at Wizard's internals.

Read how to [Build and Test](doc/Building.md) Wizard.

Read how to use [tracing options](doc/Tracing.md) in Wizard.

Read how to use built-in [monitors](doc/Monitors.md) for analysis in Wizard.

Read how to build your own custom [monitors](doc/CustomMonitors.md) for instrumentation in Wizard.

### Research Projects

Currently, Wizard supports multiple research projects:

 * Fast-int: the fast, in-place interpreter for Wasm
 * [Wasm-R3](https://github.com/sola-st/wasm-r3), a record-reduce-replay framework for Wasm
 * [Whamm!](https://github.com/ejrgilbert/whamm), a instrumentation DSL for Wasm 
 * Stack-switching: a fast implementation of [WasmFX](https://wasmfx.dev) for Wizard

## License

Licensed under the Apache License, Version 2.0. ([rt/LICENSE](LICENSE) or https://www.apache.org/licenses/LICENSE-2.0)
