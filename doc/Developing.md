# Developing in the Wizard Engine

The Wizard Engine is designed to a research and experimentation vehicle.
This page collects tips and guidance for how to get started working on Wizard's internals to extend and improve it.

## Get syntax highlighting for Virgil in your IDE

Wizard is written in Virgil, a lightweight systems language designed making fast and efficient low-level programs, like virtual machines.
Virgil syntax highlighting is available for a number of editors, including:

- Visual Studio Code: Via the Virgil plugin in the [Marketplace](https://marketplace.visualstudio.com/items?itemName=ahuoguo.virgil)
- Emacs: via the E-lisp in [virgil/bin/virgil-mode.el](https://github.com/titzer/virgil/blob/master/bin/virgil-mode.el)
- Vim: via the configuration in [virgil/bin/dev/virgil-vim](https://github.com/titzer/virgil/tree/master/bin/dev/virgil-vim)

## Use CTAGS for faster navigation

Virgil can generate [CTAGS](https://en.wikipedia.org/wiki/Ctags) files that help navigating program definitions and uses, which is a must in any unfamiliar codebase.
A number of editors support CTAGS, including `emacs` and `vim`.
Building the CTAGS for Wizard is simple:

```
% make TAGS
```

By default, the TAGS file will be generated in the root of the Wizard source directory.
If you are using `emacs`, it will try to load the `TAGS` file the first time you lookup an identifier.
It will typically prompt you for its location, which will be the root of your Wizard checkout.
The Emacs [reference manual](https://www.gnu.org/software/emacs/manual/html_node/emacs/Looking-Up-Identifiers.html) has good documentation on the various commands and their default bindings, including:

- Find the definitions of a given identifier
- Find the definitions of a given match pattern
- Find uses of a given identifier
- Find/replace a given identifier (i.e. rename)

## Debug with tracing modes first (probably)

Getting insight into Wizard's behavior--for example, to debug a change you've made--often starts with enabling tracing flags.
These flags enable trace output of various phases of loading and executing a program, broken down by subsystem.
For example, specific flags can enable tracing events related to loading, parsing, or verifying a program.
If you're adding new bytecodes or new types to Wizard as an experiment, or implementing a proposal, these flags will help debug issues during decoding and validation.
Other flags enable tracing the execution of the program, such as the calls it makes, both internally and to host calls, and tracing the interpreter state.
Refer to the [documentation on tracing](Tracing.md) for explanation of the flags, or use the `-help` flag to `wizeng`.

## Debug with built-in Monitors

Monitors offer a flexible extension mechanism to add new dynamic analyses to Wizard.
They can also be useful for development of Wizard itself, as they offer more detailed insight into how programs executing.
Refer to the [documentation on monitors](Monitors.md) for explanation of monitors, or use the `-help` flag to `wizeng`.

### Deeper tracing with the `tracepoints` monitor

Often, tracing modes, such as `-tio` (trace interpreter with operands) generate far too much output for a person to manually inspect.
Wizard supports targeted tracing of specific program locations via the `tracepoints` monitor, which allows one to choose locations in the program that then print out the entire stack frame of the enclosing function each time they are executed.
This is useful to debug programs, but also to debug Wizard itself.
For example, a bug in the code generation of the single-pass compiler might cause a program to misbehave.
Comparing the output of the program when run under either the V3 interpreter or fast interpreter to its output when run on SPC, and then using tracepoints to target the tracing output to suspect functions has been a game changer!

### Stop anywhere with the `breakpoints` monitor

Similar to the `tracepoints` monitor, this monitor causes the single-pass compiler (and soon, the fast interpreter) to execute a machine-level `break` instruction (`int3` on `x86-64`), which can be used to stop the entire execution in `gdb` and inspect machine code and registers.
This has been extremely useful to debug SPC wrong-code bugs!

## Trace Wizard internal calls with `V3C_OPTS=-trace-calls=<methods>`

A nice feature of Virgil is that it includes an interpreter for the full language.
While absolutely necessary for Virgil's compile-time initializers, it is also useful as a sanity check for the Virgil compiler, as any platform-independent Virgil program can be run in the interpreter `v3i`, which includes various tracing modes, utilities, and even a debugger.
Wizard can be run on `v3i` which not only skips a compilation step, but can also make use of tracing modes via the `V3C_OPTS` environment variable:

```
% V3C_OPTS=-trace-calls='Module.*' bin/wizeng.v3i test/monitors/loop_monitor0.wasm
Module.new(<null>)
Module.new(#2980:Module, #2961:Array<byte>)
Module.addDecl(#2980:Module, #3056:SigDecl)
Module.addDecl(#2980:Module, #3064:FuncDecl)
Module.addDecl(#2980:Module, #3067:FuncDecl)
Module.addDecl(#2980:Module, #3069:FuncDecl)
% 
```

For example, in the above invocation of Wizard, we add the environment variable `V3C_OPTS`, which is used by the `bin/wizeng.v3i` script to pass options to the underlying Virgil compiler.
Here we pass `-trace-calls='Module.*'` which is a pattern that selects all methods of the `Module` class, and the result is that we can see the construction of the module as it happens.
Since the `-trace-calls` option works at the Virgil interpreter level, we can trace any function in Wizard.
Running with two levels of interpretation (a Virgil interpreter running a Wasm interpreter) can be quite slow, so this works best with smaller programs.

## Stop Wizard anywhere with `V3C_OPTS=-fatal-calls=<methods>`

We can make use of `V3C_OPTS` to pass essentially any options to the Virgil interpreter/compiler.
Another useful option is `-fatal-calls` which takes a function pattern, exactly as `-trace-calls`.
However, instead of printing the arguments to the call, `v3i` will terminate the program and print a Virgil-level stack trace.
This can be useful to figure out the chain of calls leading up to, e.g. an error message.

```
% V3C_OPTS=-fatal-calls='Module.addDecl' bin/wizeng.v3i test/monitors/loop_monitor0.wasm
!FatalCall
	in Module.addDecl() [/Users/titzer/wizard-engine/src/engine/Module.v3 @ 33:30]
	in BinParser.readDefFuncType() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 407:31]
	in BinParser.readDefSingleType() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 391:78]
	in BinParser.readDefType() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 357:42]
	in BinParser.readLoop() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 163:29]
	in BinParser.decodeSection() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 69:41]
	in BpFsm.advance() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 812:71]
	in BpFsm.decodeLoop() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 751:32]
	in BpFsm.push() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 734:27]
	in TimeMetric.run() [/Users/titzer/wizard-engine/src/engine/Metrics.v3 @ 122:42]
	in BinParser.push() [/Users/titzer/wizard-engine/src/engine/BinParser.v3 @ 40:41]
	in Engine.loadWasmFile() [/Users/titzer/wizard-engine/src/engine/Engine.v3 @ 14:32]
	in main() [/Users/titzer/wizard-engine/src/wizeng.main.v3 @ 66:49]

%
```

Here, we can see exactly where the first invocation of `Module.addDecl` occurs.

## How to add your own print calls

## Using the Virgil debugger `vdb`

## How to use `gdb` to debug Wizard

## Getting the most out of unit tests

Debugging a virtual machine bug that occurs only on a very large program can be tedious and time-consuming.
In developing Wizard, we do everything possible to preempt this by building effective unittests and making the unit testing edit-run-debug cycle as fast as possible.

### Install `progress` to make the output nicer

The `progress` utility helps clean up the logging output that is output by Wizard's various test suites by summarizing it and presenting failed tests in a clean way.
It is highly recommended to install this via the steps in the [documentation on building](Building.md).

## Getting the most out of regression tests
