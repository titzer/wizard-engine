# Wizard Engine Monitors

The Wizard engine offers a variety of instrumentation and dynamic analysis *monitors* that perform dynamic analysis of Wasm programs.
These monitors utilize Wizard's efficient *probe* mechanism that allows extensible event handling at desired points of program execution.

## Usage

Monitors are enabled using the `--monitor` flag, which accepts multiple monitors with options.

```
wizeng --monitors=<monitor>{<opts>}[,<monitor>{<opts>}] <wasm files>
```

Each monitor supports its own optional arguments and modifiers:

```
<monitor>{<opt>=<modifier>[,<opt>=<modifier>]}
```

Here's an example usage:
```
% bin/wizeng --monitors=loops test/monitors/loop_monitor0.wasm
func #1:
   +8 ... +39 loop:   133
  +14 ... +27 loop:   399
  +45 ... +58 loop:   123
```

## Options

When no optional arguments are provided, most monitors display summary information.
For several monitors, the `code` argument will print out instrumentation information alongside bytecode.
The `-csv` global argument outputs the monitor data in a CSV format to standard out, which is useful for processing data with external scripts.
The available monitors and their options are as follows:

| Monitor    | Options                                    | Description                                                                                         |
|------------|--------------------------------------------|-----------------------------------------------------------------------------------------------------|
| [`branches`](BranchMonitor.md) | `{c\|code}`                                | Tracks branch instructions to analyze control flow, depicting inward or outward control flow edges. |
| `calls`    | `{c\|code[=<function pattern*>]}`          | Captures function call information and call stack, optionally filtered by a function pattern.       |
| [`control`](ControlMonitor.md)  |                                            | Counts branches and loops and displays an annotated control flow graph.                             |
| `coverage` | `{c\|code[=i\|instr]}`                     | Tracks code coverage, optionally at block or instruction level.                                     |
| `debug`    |                                            | Provides ability to step through bytecode and pause execution using breakpoints.                    |
| `fprofile` | `{<function pattern*>}`                    | Function profiler that reports time spent in individual functions                                   |
| `globals`  |                                            | Provides information on the usage of global variables.                                              |
| `hotness`  | `{c\|code}`                                | Identifies hot code regions with high execution frequency.                                          |
| `icount`   |                                            | Reports instruction count within functions.                                                         |
| [`loops`](LoopMonitor.md)    | `{c\|code}`                                | Analyzes loop blocks and their execution behaviour.                                                 |
| `memstats` |                                            | Monitors memory accesses and reports statistics per page of memory.                                 |
| `opcodes`  |                                            | Reports the static and dynamic count of instructions, broken down by opcode.                        |
| [`profile`](ProfileMonitor.md)  | `{depth=<num>\|calls=<function pattern*>}` | Collects performance profiling data, with options for depth or function pattern.                    |
| `timeout`  | `{<num>}`                                  | Terminates program execution after a given number of instructions.                                  |
| `tracepoints` | `{<func-filter>:min_pc..max_pc}`        | Traces a function's value stack at given locations.                                                 |

## Debugger

The debugger can be enabled using the `debug` monitor. Here's a description of the supported commands:

| Command             | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `run / r`           | Begins execution of the program.                             |
| `continue / c`      | Resumes execution from the current point.                    |
| `step / s`          | Executes a single instruction and pauses.                    |
| `next / n`          | Advances to the next instruction, skipping function calls.   |
| `breakpoint / b {}` | Sets a new breakpoint at the specified location.             |
| `info`              | Provides information, such as locals or breakpoints.         |
| `enable {}`         | Enables a specific breakpoint identified by index.           |
| `disable {}`        | Disables a specific breakpoint identified by index.          |
| `backtrace / bt`    | Prints a backtrace of function calls.                        |
| `set {} {} {}`      | Modifies the value of a local index with a different value.  |
