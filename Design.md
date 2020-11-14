# Wizard Engine Design

## Simplicity and Functionality First

Unlike other engines that have either grown out of Web Engines (V8, Spidermonkey, Chakra, and JSC) or emerged from compiler designs (Cranelift, Wasmtime), Wizard has the benefit of both hindsight and foresight.
It is designed to be simple and yet also takes all in-flight Wasm proposals as _requirements_.
Rather than optimize for performance for a specific set of Wasm features _now_, it is designed to first _sum_ today's and tomorrow's requirements first.

## Architecture

* Module
* Instance
* Function
* Bytecode
* Opcodes
* BinParser
* ValueType
* CodeValidator
* Value
* Interpreter
* Host
* Errors
* Extensions
* SpecTestParser

