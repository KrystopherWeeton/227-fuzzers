## How to fix `FunctionAttributeKind 26` errors in sys
1. Replace `stack.yaml` in the sys' root using the file from this repo.
2. `cd /path/to/sys` and clone llvm-hs: `git clone 'https://github.com/llvm-hs/llvm-hs/'`.
3. `stack purge && stack clean`
4. `stack build`
