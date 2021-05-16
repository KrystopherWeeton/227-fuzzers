#!/bin/bash

# First compile source code
if [ "$#" -ne 1 ]; then
    echo "USAGE: ./singleExecuteSys <PATH_TO_CHALLENGE_ROOT_DIR>"
    exit 1
fi

# Record current PWD
CURR_PWD=$PWD

# Record challenge root dir
CHALLENGE_ROOT_DIR=$1
CHALLEGE_SRC_DIR=$CHALLENGE_ROOT_DIR"/src/"
echo "CHALLENGE_SRC_DIR is: " $CHALLEGE_SRC_DIR

# Compile the .c files in the src
cd $CHALLEGE_SRC_DIR
CHALLENGE_NAME=$(pwd | awk -F/ '{print $(NF-1)}')

OUTPUT_DIR=$CURR_PWD"/output"

# Create output path
if [ -d $OUTPUT_DIR ]
then
        OUTPUT_PATH=$OUTPUT_DIR"/"$CHALLENGE_NAME"_results.log"
else
        OUTPUT_PATH=$CURR_PWD"/"$CHALLENGE_NAME"_results.log"
fi

# Create output file
echo "OUTPUT_PATH IS:" $OUTPUT_PATH
echo -n "" > $OUTPUT_PATH #This will erase the existing file.
#touch $OUTPUT_PATH

for f in *.c; do
	# echo $f
        /home/ubuntu/src/sys/utils/dclang -c $f -I ../lib -I ../../../lib/libcgc/ -I ../include -I ../../../include/ >> $OUTPUT_PATH 2>&1
done

# Go back to sys
cd $CURR_PWD

# Execute sys on the ll files
echo "############## Executing uninitialized variable check ##############" >> $OUTPUT_PATH
stack exec sys -- -c uninit  -e prod -d $CHALLEGE_SRC_DIR >> $OUTPUT_PATH 2>&1
echo "############## Finished uninitialized variable check ##############" >> $OUTPUT_PATH

echo "############## Executing heap out of bounds check ##############" >> $OUTPUT_PATH
stack exec sys -- -c heapoob  -e prod -d $CHALLEGE_SRC_DIR >> $OUTPUT_PATH 2>&1
echo "############## Finished heap out of bounds check ##############" >> $OUTPUT_PATH

echo "############## Executing concrete out of bounds check ##############" >> $OUTPUT_PATH
stack exec sys -- -c concroob  -e prod -d $CHALLEGE_SRC_DIR >> $OUTPUT_PATH 2>&1
echo "############## Finished concrete out of bounds check ##############" >> $OUTPUT_PATH

echo "############## Executing user input check ##############" >> $OUTPUT_PATH
stack exec sys -- -c userinput  -e prod -d $CHALLEGE_SRC_DIR >> $OUTPUT_PATH 2>&1
echo "############## Finished user input check ##############" >> $OUTPUT_PATH
