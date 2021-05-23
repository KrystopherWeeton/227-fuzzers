#!/usr/bin/env bash

# Uncomment these variables or use env vars
# SYS_ROOT=""

## CONSTANTS ##
files=(0 2 4 8 16 32 64 128 256 512 1024 2048 4096)

## FUNCTIONS ##
fatal() {
    msg="$1"
    echo "FATAL: ${msg}"
    exit 1
}

run_sys() {
    set -o xtrace
    checker="$1"
    logf="$2"
    dir="$3"

    echo "$checker $logf $dir"

    { cd "${SYS_ROOT}" && stack build -j10; cd -; } || {
	fatal "stack build returned non-zero exit code"
    }
    
    cd "${SYS_ROOT}"
    stack exec -- sys -c "${checker}" -e prod -d "${dir}" > /dev/null 2>&1
    cd -
    
    set +o xtrace
    
}

if [ -z "$SYS_ROOT" ]; then
    fatal "SYS_ROOT is not defined. Export it in the shell or add it to the script."
fi

if [ "$#" -ne 1 ]; then
    fatal "$(printf 'Incorrect arguments.\nUSAGE:\n\t%s <path to bitcode directory>' "${0}")"
fi

INPUT_DIR="${1}"
OUTPUT_DIR="/tmp/scaling_playground/"

copy_files() {
    n=$1
    
    mkdir -p "${OUTPUT_DIR}"
    rm "${OUTPUT_DIR}"/*

    iter=0
    for f in "${INPUT_DIR}"/*; do
	if [ $iter -ge $n ]; then
	    break
	fi
	    
	ln "${f}" "${OUTPUT_DIR}$(basename ${f})"
	
	((iter+=1))
    done
}

export TIMEFORMAT='%3lR'

for count in "${files[@]}"; do
    copy_files $count

    ls "${OUTPUT_DIR}" | wc -l
    time { run_sys "uninit" "/dev/stdout" "${OUTPUT_DIR}" >> /dev/null 2>&1; }
    

done
