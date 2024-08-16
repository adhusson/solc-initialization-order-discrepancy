## solc initialization discrepancy test

This repo shows a behavior difference between the solc classic pipeline and the via_ir pipeline. 

To check the difference, run `forge test -vv` with and without `via_ir = true` in `foundry.toml`.

In `src/C.sol`, the contract `C` inherits from `Give` and from `Take`. `Give` initializes an internal state variable `PARAM` to 1. `C` passes that variable to `Take`'s construtor and `Take` logs that variable.

* If `via_ir` is true, `Take`'s constructor receives 0 as argument.
* If `via_ir` is false, `Take`'s constructor receives 1 as argument.

### Notes
* The difference exists since 0.7.6 and is present up to 0.8.26.
* If `PARAM` is initialized in `Give`'s constructor, then `Take`'s constructor receives 0 as argument even is `via_ir` is false.