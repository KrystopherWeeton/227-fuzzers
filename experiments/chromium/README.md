# README Experiment - Sys & Chromium
## Files
1. sys: contains all sys files needed for analysis
2. all_llvm_files: contains all llvm files generated from chromium source code with clang-9 compiler
3. clang-9: contains updated version of clang-9, so llvm bitcode files generated can be compatible with sys
4. collect_files.py: python script to collect all llvm bitcode files generated from chromium source code in the chromium/src directory after the compilation
5. run_sys.sh: shell script to iterate through each llvm file in the all_llvm_files directory and run all four different bug categories analysis with sys (since supplying the entire directory would crash sys)

## Steps
1. Download depot_tools for chromium project 
```
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
```
2. Export depot_tools to path
```
export PATH="$PATH:${HOME}/depot_tools"
```
3. Get into the directory that you want chromium source code to be downloaded and run
```
fetch --nohooks chromium
```
If the chromium foundation hasn't fixed this issue, the fetch procedure would fail, and you will have to download missing files one by one.

While we worked on this project, these are the three directory missing
```
skia: https://github.com/google/skia
v8: https://github.com/v8/v8
gn: https://gn.googlesource.com/gn/+/096dd2260cb20b33e74da86b712771784348599a
```
4. Run
```
./build/install-build-deps.sh
gclient runhooks
```
5. Build gn and move the executable out of buidtools/linux64 directory
6. Run
```
gclient sync
gn gen out/Default
autoninja -C out/Default chrome
```
7. Replace path in args.gn to your desired clang directory
8. Add these two options to args.gn
```
is_debug = false
clang_use_chrome_plugins = false
```
9. Run
```
gn gen out/Default
autoninja -C out/Default chrome
```
10. Run collect_files.py to collect all llvm bitcode files generated.

11. Run run_sys.sh to run sys on all files with 4 different bugs
