# Performance Testing #

## What tests should *do*: ##

1. Check performance improvement with non-intrinsified vs. intrinsified (with each available optimization tier)
    1. memory usage
    2. runtime impact
2. Stress testing (high frequency of callback being attached)
3. Composition of multiple whamm monitors
    1. multiple probes at a single location

## Tests to write: ##

- Simple probes (testcases involve “1 → ∞” of these probes)
    - simple match rule, needs no application data from frameaccessor
- Simple probes + static predicate (testcases involve “1 → ∞” of these probes)
    - only requests static data at match time for the static predicate
- Data-requesting probes (testcases involve “1 → ∞” of these probes)
    - Match rule without predication, but requests data from the frameaccessor when on callback invocation
    - Requested data:
        - localN
        - immN
        - argN
        - memory load results
        - table index values
        - etc.
- Data-requesting probes + static predicate (testcases involve “1 → ∞” of these probes)
    - requests static data at match time for the static predicate
- Mixture of probe types (testcases involve “1 → ∞” of these probes)
    - the types of probes in the test case involves a mixture of the above options!
- Probes call out to a linked module
- multi-memory!
- change ordering of requested operands
    1. (argN at the end)
    2. Request all args (in different orders, set to different values to see if things are off)

## Future: ##
1. Test behavior when tiering up, THEN deoptimizing (fall back to the interpreter)...can't be done until we have an API for probe removal...