# Wizard Engine Monitor Ideas

The Wizard engine comes with a number of built-in monitors that are useful for general dynamic program analysis.
It contains a framework for flexible and fast instrumentation that separates monitor logic from the implementation details of the VM.
A great way to contribute analyses and tools that help everyone would be contribute a monitor.

Here are some ideas of monitors that we'd like to build or would welcome contributions from the community for:

## `malloc` Monitor

Wasm programs that allocate data structures in the linear memory and explicitly free them, such as C/C++ `malloc` and `free` could benefit from a monitor that tracks allocations and deallocations.
This monitor would attach to the functions representing `malloc` and `free` in the program (either manually-specified or by a naming heuristic) and then dynamically track each object of allocated memory from its initial allocation to the point where it is explicitly freed.
It could then report statistics such as:

  * Statistics on each allocation site's behavior, such as `minimum`, `maximum`, `average`, and `total` bytes allocated
  * Statistics on the allocation `lifetime` (e.g. number of instructions between `malloc` and `free`) of allocated objects
  * Suspected memory leaks, e.g. objects allocated but never freed
  * Object type distribution, e.g. by assuming some part of an allocation contains metadata determining the type of an object

Using data from this monitor, it would be interesting to visualize:

  * A heatmap of allocation sites and memory ranges used by the program
  * A timeseries of memory consumption (bytes, objects)
  * Visual depiction of lifetime of objects

## `memory` Monitor

While Wizard has some basic support for monitoring memory, an enhanced memory monitor could be useful to study program behavior at finer granularity than allocations.
For example, understanding the access patterns could help diagnose performance issues or aid in program reverse-engineering and understanding.
It could report, at multiple granularities:

  * read/write count
  * strides (FFT somehow ?), use prefetching detector algorithms
  * hotness / heatmap
  * memory access density (accesses per 1000K instructions)
  * aliasing relationship between "pointers" into memory
  * how often contents of memory change

## `branch-predictor` Monitor

While Wizard has an accurate branch and control flow monitor that reports summaries for every branch and loop in the program, it might also be useful to study the temporal behavior of branches in the program.
For example, a branch prediction simulation could identify unpredictable branches that might inform optimizations.

## `paths` Monitor

Wizard's existing control flow monitors record per-site summaries for branches and loops, but don't record information about control flow paths.
This monitor could, e.g. profile paths or traces through a program with finer granularity.
For example, reporting the count of each unique acyclic path through a function was a task assigned in [CMU 17-770 Fall 2024](https://github.com/CMU-17770-Fall24/vm-dynamic-analysis/blob/main/docs/path-prof.md).
A path profiling monitor could identity opportunities for optimization (such as trace compilation, tail duplication/merging, and code organization) and aid in program understanding and reverse engineering.

## `phase` Monitor

It's been observed that programs often exhibit [*phase*](https://cseweb.ucsd.edu/~calder/simpoint/phase_analysis.htm) behavior which are noticeable and sudden changes that often repeat between several self-similar patterns.
A monitor to detect phases could use multiple different signals, such as block coverage, memory access patterns, cache misses, call patterns, etc.

## `object` Monitor

Similar to an allocation monitor, a monitor that explicitly tracks allocations of Wasm GC structs and arrays would be useful.
Since Wasm GC objects are not explicitly deallocated, this monitor could potentially integrate deeper with Wizard's garbage collection strategy to understand the behavior of the garbage collector and inform optimizations.

## `trace` Monitor

Similar to the `paths` monitor, a trace monitor could report execution traces at the instruction, block, or function level.
Traces are often useful for understanding optimization opportunities and reverse-engineering.

## `loops` Monitor

The existing loops monitor could be extended to record and report statistics on the trip count for each loop.
This is often useful as low or zero-trip loops can be optimized differently from high-trip count loops.

## `const` Monitor

Many storage locations in a program may be technically mutable but only ever store one value.
Uncovering this information can allow some optimizations and helps program understanding.
This monitor could, for example:

   * track whether a given store instruction:
     * always stores to the same address
   * track whether a given load instruction:
     * always loads from the same address
     * always loads the same value => partial eval
     * always loads data that is not later modified by the program => partial eval
   * track whether a given global.get:
     * always loads the same value
   * track whether a given global.set:
     * always writes the same value
   * trace whether a given struct field:
     * always contains the same value

## `read-write-set` Monitor

This monitor would determine the set of storage locations that are read or written by each function.
For example, it could answer questions such as:
   * Does a given function
     * access a fixed number of unique locations
     * access locations computed from a param
       => lift loads and sink stores, make function pure
     * access memory in linear strides
     * access memory through chaining (taint)

## `denan` Monitor

Similar to Binaryen's denan transformation, this monitor would alter program behavior by instrumenting all instructions that can produce a NaN value and replacing it with either a canonical NaN or zero.

## `memoize` Monitor

Some functions are *pure*--they neither read nor write mutable state, and are thus computable from their arguments.
This monitor could statically detect pure functions (through simple analysis) and for other functions, instrument them to record for which, if any, inputs, the function avoided accessing mutable state, and thus could have been memoized.

## `metadata` Monitor

This monitor would track and report engine-level metadata for a Wasm program, including the sizes of data structures used to represent the code and data.

## `r3-gc` Monitor extension

Wizard includes a monitor capable of recording a Wasm program's interactions with the outside world and producing a replay module that executes the original program with generated functions that replay the original execution.
However, due to limitations in how this monitor works, it doesn't support Wasm GC.
This monitor should be extended to support structs, arrays, and function references.
