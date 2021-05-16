#!/bin/bash
  
# 
if [ "$#" -ne 1 ]; then
    echo "USAGE: ./dirExecuteSys <PATH_TO_DIR_CONTAINING_CHALLENGES>" 
    exit 1
fi

# Record challenges dir
CHALLENGES_ROOT_DIR=$1

OUTPUT_DIR="./output"

if [ -d $OUTPUT_DIR ]
then
    echo "Directory output exists. Either save your results and rename output or delete output"
    exit 1
else
    mkdir output 
fi

# Loop over all challenges in the provided challenge dir
for d in $CHALLENGES_ROOT_DIR/*; do
	echo $d
	./singleExecuteSys.sh $d
done

