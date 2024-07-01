# Building Custom Monitors in Wizard

Wizard comes with many [built-in](Monitors.md) monitors that offer tools for debugging, tracing, and profiling.
Even better, Wizard offers APIs that make writing your own custom monitors really easy.
With these APIs you can write a monitor that analyzes programs in a way that suits your needs, whether that be application-specific or a general tool.

## Add a New Monitor to `src/monitors`.

Custom monitors in Wizard can be built into the engine, which is done by simply adding a new `.v3` file in `src/monitors` and rebuilding.
All the Virgil files in this directory which will automatically get picked up by the build system and compiled into the `wizeng` binary.
Let's get started by copying over a pre-written demo and rebuilding.

```
% cp doc/Demo42Monitor.v3 src/monitors
% make -j
./build.sh wizeng x86-linux
./build.sh wizeng x86-64-linux
./build.sh wizeng jvm
```

After building we can immediately use this monitor by supplying the `--monitors=demo42` flag to Wizard.
If we run this monitor on the example program in `doc/add_42.wasm`, we can see output as below.

```
% bin/wizeng --monitors=demo42 doc/add_42.wasm
Instrumenting module...
Found an i32.add...
Found an i32.add...
Executing an i32.add...
Executing an i32.add...
42 was the result!
<wasm func "main"> +1
  <wasm func "start"> +8
    !trap[BREAK]
```

This monitor is really simple: it probes every `i32.add` instruction in the program and checks if the result is `42`.
If so, it terminates the program with a stacktrace.
In the output above we see the monitor reporting when it is instrumenting a module, when it's found an instruction to instrument, when that instruction is executed, and when it terminates the program.

Note that monitors compose really nicely with each other and the built-in trace flags.
For example, we can run our demo monitor and also trace instructions (with operands) at the same time:

```
% wizeng --monitors=demo42 -tio add_42.wasm 
Instrumenting module...
Found an i32.add...
Found an i32.add...
+1:   call[func=1]            | |
  +1:   i32.const[1]            | |
  +3:   i32.const[40]           | | 1
  +5:   <probe> i32.add         | | 1 40
Executing an i32.add...
  +6:   i32.const[1]            | | 41
  +8:   <probe> i32.add         | | 41 1
Executing an i32.add...
42 was the result!
<wasm func "main"> +1
  <wasm func "start"> +8
    !trap[BREAK]
A 42 was found!
```

Obviously, for large programs that execute millions or billions of instructions, tracing events quickly overwhelms us.
The tracing in this demo was for illustrative purposes.
The magic of monitors is that we can collate information, build summaries, track complex state, and generate useful reports in the end.
Before we do that though, let's look at the internals of how `Demo42Monitor` is written.

## A look inside Demo42Monitor

If we look into the source of this monitor in [Demo32Monitor.v3](./Demo42Monitor.v3), we that there are four main parts to the monitor:

  1. Registration of the monitor.
  2. Instrumentation of bytecode in a module.
  3. Execution of bytecode probe(s).
  4. Reporting of results.

```
// 1. Register our simple monitor so it is accessible with  --monitors=demo42
def E = MonitorRegistry.add(
	"demo42", "Reports occurrences of the number 42 after an integer addition.",
	Demo42Monitor.new());

// Our monitor class that is put in the registry. Its {onParse()} method will be called
// after a user module is parsed.
class Demo42Monitor extends Monitor {
	// 2. Instrument bytecode of the module using our class below.
	def onParse(m: Module) {
		System.puts("Instrumenting module...\n");
		Demo42Instrumenter.new(m).run();		// run bytecode instrumenter
	}
	// 4. Report results when finished.
	def onFinish(i: Instance, r: Result) {
		if (found) System.puts("A 42 was found!\n");
		else System.puts("No 42 occurred in any i32.add.\n");
	}
}

// Our monitor defines a bytecode instrumenter and overrides the {visit_I32_ADD()} method
// to insert instrumentation on "i32.add" bytecodes.
class Demo42Instrumenter extends BytecodeInstrumenter {
	new(module: Module) super(module) { }			// constructor must take a module

	def visit_I32_ADD() {					// instrument all "i32.add" instructions
		System.puts("Found an i32.add...\n");
		insertProbeHere(AddCheckerProbe.new());
	}
}

// A global variable indicating whether 42 was found.
var found = false;

// Our monitor uses a custom probe that checks whether an "i32.add" will produce 42.
class AddCheckerProbe extends Probe {
	// 3. Execute probe logic at runtime.
	def fire(dynamicLoc: DynamicLoc) -> Resumption {
		System.puts("Executing an i32.add...\n");
		var accessor = dynamicLoc.frame.getFrameAccessor();	// get accessor to inspect stack frame
		var a = accessor.getOperand(-1);			// get first operand to add
		var b = accessor.getOperand(0);				// get second operand to add
		var result = Values.v_i(a) + Values.v_i(b);		// compute result of add
		if (result == 42) {					// check if we should terminate
			found = true;
			System.puts("42 was the result!\n");
			return Resumption.Trap(TrapReason.BREAK, true);
		}
		return Resumption.Continue;				// otherwise, continue unimpeded
	}
}
```

### Registration of the monitor

We see above that the registration is done through `MonitorRegistry.add`, where we add an instance of `Demo42Monitor`, which is a subclass of `Monitor`.
Wizard uses this to match the name in a flag `--monitors=demo42` to our class, and also to provide a help blurb.

### Instrumentation of the module

We see that the above code overrides the `onParse()` method and uses a `BytecodeInstrumenter` subclass to find and insert `AddCheckerProbe` instances on all `i32.add` instructions.

### Runtime monitoring

We see above that we wrote logic in `AddCheckerProbe.fire()` to dynamically inspect the state of the program (i.e. the inputs to an `i32.add`) to check for a `42` result.
A probe can continue as normal or trap.

### Reporting results

At the end of execution, our `Demo42Monitor` class will have its `onFinish()` method called with each instance that finishes.
It can then report a summary of information that happened during execution.

## More APIs

Wizard is a fully-featured Wasm execution engine.
Monitors offer a programmable hook that allows instrumentation and callbacks.
This was just an overview of the process; for more information, refer to internal API documentation or consider studying the implementation of other built-in monitors, until such time as more useful documentation is written.

