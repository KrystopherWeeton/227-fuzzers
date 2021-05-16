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
