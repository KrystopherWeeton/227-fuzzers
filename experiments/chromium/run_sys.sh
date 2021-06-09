#! /bin/bash

start=$(date +%s.%N)

BASE_COMMAND1="stack exec sys -- -c uninit -e prod -d"
BASE_COMMAND2="stack exec sys -- -c heapoob -e prod -d"
BASE_COMMAND3="stack exec sys -- -c concroob -e prod -d"
BASE_COMMAND4="stack exec sys -- -c userinput -e prod -d"

BASE_DIRECTORY="/home/jeffersonchien/all_ll_files"

touch $1
touch $2
touch $3
touch $4

# Loop through all llvm bitcode files in all_ll_files

# Run uninit test
echo "Run uninit tests"

for file in $BASE_DIRECTORY/*
do
    echo "Running Sys on $file"
    $BASE_COMMAND1 $file >> $1 2>&1   
done

# Run heap out of bound test
echo "Run heapoob tests"

for file in $BASE_DIRECTORY/*
do
    echo "Running Sys on $file"
    $BASE_COMMAND2 $file >> $2 2>&1
done

# Run concreate out of bound tests
echo "Run concroob tests"

for file in $BASE_DIRECTORY/*
do
    echo "Running Sys on $file"
    $BASE_COMMAND3 $file >> $3 2>&1
done

# Run user input tests
echo "run userinput tests"

for file in $BASE_DIRECTORY/*
do
    echo "Running Sys on $file"
    $BASE_COMMAND4 $file >> $4 2>&1
done

duration=$(echo "$(date +%s.%N) - $start" | bc)
execution_time=`printf "%.2f seconds" $duration`

echo "Script Execution Time: $execution_time"
echo $execution_time > time_taken.txt

