# Wizard Engine Design

## Simplicity and Functionality First

Unlike other engines that have either grown out of Web Engines (V8, Spidermonkey, Chakra, and JSC) or emerged from compiler designs (Cranelift, Wasmtime), Wizard has the benefit of both hindsight and foresight.
It is designed to be simple and yet also takes all in-flight Wasm proposals as _requirements_.
Rather than optimize for performance for a specific set of Wasm features _now_, it is designed to first _sum_ today's and tomorrow's requirements first.

## Architecture

* [Module](src/engine/Module.v3) - The centerpiece of any Wasm engine, this is the decoded, in-memory representation of a Wasm module.
  It contains the *declared* module members, i.e. signatures, types, functions, memories, tables, etc.
  To support relaxed section order, a module keeps the members in the ordered declared in the binary and contains an index of members segregated by their kind.

* [Instance](src/engine/Instance.v3) - Represents the entire state of an instantiated module, including its memories, tables, and bound imports.
  An instance is the primary data structure needed to execute code, e.g. in the interpreter.
  The [Instantiator](src/engine/Instantiator.v3) class contains the logic to bind imports (by consulting *import processors*) and to properly construct an instance in order of its original declarations.
* [Function](src/engine/Instance.v3) - Represents a function bound to a instance, or a host function, supplied by the surrounding environment.
* Bytecode - The copied raw bytes of an individual function from a module.
  It contains a small side data structure (the *control transfer* information) that helps the interpreter run without linear overhead, due to Wasm's structured control constructs.
* [Opcodes](src/engine/Opcodes.v3) - The central place for describing the opcode, name, immediates, and simple signature of each bytecode.
  This makes it easy to see at a glance what each bytecode does.
  Immediate kinds separate the logic of decoding an opcode from its immediate.
  We make nice use of Virgil's enhanced enum language mechanism here.
* [BinParser](src/engine/BinParser.v3) - Contains the logic of parsing Wasm module bytes into the internal memory representation.
  Internally it utilizes a simple state machine to be *push-based*, i.e. it is possible to create a BinParser and then feed parts of a module incrementally as they become available, for example over a network.
* [ValueType](src/engine/ValueType.v3) - The one place where types are represented in the engine.
  This makes it easy to see what kinds of types are needed, and the logic for all type relations (e.g. assignability, subtyping, least-upper-bound) are expressed here.
* [CodeValidator](src/engine/CodeValidator.v3) - Contains all logic for validating function bodies.
  The code validator uses the standard single-pass abstract interpretation approach for checking code.
  In addition to validating all types and control flow, it produces the *control transfer* information needed for the fast interpreter.
* [Value](src/engine/Value.v3) - Contains all the Wasm values, including primitives, references, etc.
* [Interpreter](src/engine/Interpreter.v3) - The low-overhead interpreter that executes Wasm binary code directly.
  It contains a straightforward value stack and call stack and makes heavy use of Virgil's first-class primitive operators in order to be concise.
  It uses the control transfer information to execute branches and if's with low overhead.
* [Host](src/engine/Host.v3) - Contains the base declarations for all host-provided functionality, e.g. for an embedding.
* [Errors](src/engine/WasmErrorGen.v3) - Contains all the logic for the many kinds of errors that can be produced by an engine when decoding, validating, or instantiating a Wasm module.
  This separation allows the mainline code of decoding, validation, and instantiation to be kept tidy.
* [Extensions](src/engine/Extensions.v3) - Contains an enumeration of all the extensions that can be individually enabled for the engine.
* [SpecTest](test/spectest) - Contains a parser for the .bin.wast format in which specification tests are expressed, along with an interpreter capable of running them.
