# Prerequisite

I assume you have Sys installed and built correctly and it can find bugs in coreutils 6.1. If you haven't, say so in the group chat and someone can guide you through it.

# Modifying dclang

First check the following is correct:
On the line with `CC` the line should read:
`CC = CLANGPATH + "clang-9"`
On the line with `CXX` the line should read:
`CXX = CLANGPATH + "clang++-9`
Next, inside the function titled `main`, comment the line `if myname[:6] != "dclang"` and `raise RuntimeError("argv[0] *must* begin with dclang!")`

# Github repos (Challenges)

clone the following repositories with:
git clone https://github.com/trailofbits/cb-multios
and
git clone https://github.com/GrammaTech/cgc-cbs

# Scripts

Inside this folder is two scripts: `dirExecuteSys.sh` and `singleExecuteSys.sh`.

In summary, `dirExecuteSys.sh` takes as input the path to the directory with all the challenges and loops over them and executes sys on each of them. For example: `./dirExecuteSys.sh cb-multios/challenges` is one way to run sys on all the challenges in cb-multios
In summary, `singleExecuteSys.sh` takes the path to the root directory of a single challenge and compiles each individual .c file and then outputs the results to a file called `CHALLENGE_NAME_results.log`, where `CHALLENGE_NAME` is replaced with the name of the challenge. For example: `./singleExecuteSys.sh cb-multios/challenges/3D_Image_Toolkit` is one way to run the script

## Modifying scripts

WARNING: `dirExecuteSys.sh` and `singleExecuteSys.sh` do not work out of the box. They need to be modified. First, copy both scripts to the root directory of sys. For example, the root directory for sys for me is: `/home/ubuntu/src/sys`. Next, open `dirExecuteSys.sh` and change line 12 if you want to change the output directory. Next, open `singleExecuteSys.sh` and change line 21 if you changed the output directory. Do nothing if you did not change the output directory. Next, change line 39 such that `/home/ubuntu/src/sys/utils/dclang` is the path to your sys dclang.

Always test `singleExecuteSys.sh` works as expected before running `dirExecuteSys.sh`

# How to run the code scripts and get output

To run a single challenge, navigate to the root directory of your sys. For example, mine would be `/home/ubuntu/src/sys`. Next, execute `singleExecuteSys.sh` with a single argument, the path to the root directory of a challenge. An example use of the script is: `./singleExecuteSys.sh cb-multios/challenges/3D_Image_Toolkit`. Once you execute this script, if there is no `output` folder in the root directory of sys, then there will be a standalone file called `3D_Image_Toolkit_results.log` in the root directory. Otherwise, that file will be created in the directory called `output`

To run multiple challenges, navigate to the root directory of your sys. For example, mine would be `/home/ubuntu/src/sys`. Next, execute `dirExecuteSys.sh` with a single argument, the path to the directory containing all the challenges. An example use of the script is: `./dirExecuteSys.sh cb-multios/challenges`. Once you execute this script, it will create an `output` folder and call` singleExecuteSys.sh` on every challenge in the directory and put the sys output into a file in `output`. Which output corresponding to which challenge can be identified by the challenge name.

The above examples were for cb-multios. You could just as well apply it to cgc-cbs. For example: `./singleExecuteSys.sh cgc-cbs/examples/CADET_00001` or `./dirExecuteSys.sh cgc-cbs/examples`

Warning: Not all of the challenges can be executed successfully with Sys. Some of the challenges will hang (for whatever reason. Either bug or the symbolic execution is taking forever. To avoid this, just remove the challenge from the directory)

# Annotated challenges & output & interesting files

annotated-challenges.tar.gz: represents the compilation of CGC challenges that Sys reported an error or bug in. Note that these errors/bugs can potentially be false positive. But all challenges that sys reported an error in are in this tar file. Note: these challenges are NOT for compilation to bit code or execution or anything like that. Instead, each challenge directory contains a src/ll directory. In this ll directory, you may find a bitcode file that contains the word "annotated" in its file name. This bitcode file has some useful comments (indicated by //) that help map instructions from the .ll file to the high level instructions in the .c file.

output.tar.gz: represents the output reported by Sys when executed with BB=32 LB=32 on an EC2 instance with 32GB memory (t2.2xlarge). Sys was also run with the default checkers that come from the SysPL repo (as of May 25th 2021). Untarring output.tar.gz will reveal 7 folders. output-A-D means it will contain challenges beginning with 'A' to challenges beginning with 'D'. These contain the output of ALL the challenges, but note that many of them will find no error/bug. Those challenges that do find bugs are in annotated-challenges.tar.gz

interesting files that sys can find errors in: This is my own personal .rtf file that I use to track what Sys finds and what are true errors that CGC is trying to test. The interesting parts are the 2 tables titled: `Shortlist of what Sys finds` and `Shortlist of vulnerabilities (based on README.md)`. `Shortlist of what Sys finds` represents the errors that sys finds. Left column is stack uninit errors, right column is concrete OOB. Sys did not find a single heapoob or userinput error. `Shortlist of vulnerabilities (based on README.md)` represents actual vulnerabilities reported in the README.md of challenges. The ones listed right now are ALL stack uninit bugs. The right column represents the results of running the bb_sweep script to edit sys configs. As you can see, not very promising. Below the tables is a list of all the errors sys gives. Format is: Name of challenge followed by a copy paste of the result that sys reports.
