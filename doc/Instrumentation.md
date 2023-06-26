# Wizard Engine Instrumentation

The Wizard engine offers a variety of instrumentation and dynamic analysis monitors that are capable of providing information alongside Wasm bytecode. These monitors dynamically insert probes into various parts of the bytecode, utilizing Wizard's efficient probing mechanism.

## Usage

Monitors can be enabled using flags. To enable monitors, you can pass a flag as shown below:

```bash
wizeng --monitors=<monitor>{<opts>}[,<monitor>{<opts>}] <wasm files>
```

Each monitor supports its own optional arguments and modifiers:

```bash
<monitor>{<opt>=<modifier>[,<opt>=<modifier>]}
```

Here's an example usage:
```bash
wizeng --monitors=loops,coverage{code=instr} test.wasm
```

## Options

When no optional arguments are provided, most monitors display only summaries. The `code` argument will print out instrumentation infromation alongside bytecode, where possible. The available monitors and their options are as follows:

| Monitor    | Options                                    | Description                                                                                         |
|------------|--------------------------------------------|-----------------------------------------------------------------------------------------------------|
| `loops`    | `{c\|code}`                                | Analyzes loop blocks and their execution behaviour.                                                 |
| `coverage` | `{c\|code[=i\|instr]}`                     | Tracks code coverage, optionally at block or instruction level.                                     |
| `calls`    | `{c\|code[=<function pattern*>]}`          | Captures function call information and call stack, optionally filtered by a function pattern.       |
| `branches` | `{c\|code}`                                | Tracks branch instructions to analyze control flow, depicting inward or outward control flow edges. |
| `hotness`  | `{c\|code}`                                | Identifies hot code regions with high execution frequency.                                          |
| `profile`  | `{depth=<num>\|calls=<function pattern*>}` | Collects performance profiling data, with options for depth or function pattern.                    |
| `memory`   |                                            | Monitors memory operations, such as reads and writes.                                               |
| `globals`  |                                            | Provides information on the usage of global variables.                                              |
| `debug`    |                                            | Provides ability to step through bytecode and pause execution using breakpoints.                    |

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

