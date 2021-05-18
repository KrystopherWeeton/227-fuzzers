#! /usr/bin/env bash

# Uncomment these variables or use env vars
# SYS_ROOT=""

## CONSTANTS ##
block_bounds=(0 1 2 3 4 6 8 10 12 14 16 20 24 28 32 28 34)
loop_bounds=(0 1 2 3 4 6 8 10 12 14 16 20 24 28 32 28 34)

declare -A block_bounds_line_num
declare -A loop_bounds_line_num
block_bounds_line_num=( ["uninit"]="27" ["userinput"]="46" ["heapoob"]="65" ["concroob"]="85" ["uaf"]="104")
loop_bounds_line_num=( ["uninit"]="28" ["userinput"]="47" ["heapoob"]="67" ["concroob"]="86" ["uaf"]="105")

checkers=("uninit" "userinput" "heapoob" "concroob")

## FUNCTIONS ##
fatal() {
    msg="$1"
    echo "FATAL: ${msg}"
    exit 1
}

run_sys() {
    checker="$1"
    logf="$2"
    run_whole_dir="$3"

    { cd "${SYS_ROOT}" && stack build -j10; cd -; } >> "$logf" 2>&1  || {
	fatal "stack build returned non-zero exit code"
    }
    
    if ! [ -z "$run_whole_dir" ]; then
	{ cd "${SYS_ROOT}" && stack exec -- sys -c "${checker}" -e prod -d "${INPUT_DIR}"; cd -; } >> "$logf" 2>&1  || {
	    fatal "Sys returned non-zero exit code"
	}
    else
	for f in "${INPUT_DIR}"/*; do
	    { cd "${SYS_ROOT}" && stack exec -- sys -c "${checker}" -e prod -d "${f}"; cd -; } >> "$logf" 2>&1  || {
		fatal "Sys returned non-zero exit code"
	    }
	done
    fi
}

edit_sys_config() {
    checker="$1"
    block_bound="$2"
    loop_bound="$3"
    config_file="$4"

    bb_line_num="${block_bounds_line_num[$checker]}"
    lb_line_num="${loop_bounds_line_num[$checker]}"

    sed -i "${bb_line_num}s/cfgBlockBound = [0-9]*$/cfgBlockBound = ${block_bound}/g" "${config_file}"
    sed -i "${lb_line_num}s/cfgLoopBound = [0-9]*$/cfgLoopBound = ${loop_bound}/g" "${config_file}"
}

## MAIN ##
if [ "$#" -ne 2 ] && [ "$#" -ne 3 ]; then
    fatal "$(printf 'Incorrect arguments.\nUSAGE:\n\t%s <path to bitcode directory> <output directory> [--whole-dir]' "${0}")"
fi

if [ "$#" -eq 3 ] && [ "$3" -ne "--whole-dir" ]; then
    fatal "$(printf 'Incorrect arguments.\nUSAGE:\n\t%s <path to bitcode directory> <output directory> [--whole-dir]' "${0}")"
fi

if [ -z "$SYS_ROOT" ]; then
    fatal "SYS_ROOT is not defined. Export it in the shell or add it to the script."
fi

# Set params
INPUT_DIR="${1}"
OUTPUT_DIR="${2}"
run_whole_dir="${3}"

# Create the output directory
output_sub_dir="${OUTPUT_DIR}/$(date +"%Y_%m_%d_%T")"
mkdir -p "${output_sub_dir}"

config_file="${SYS_ROOT}/src/Checkers/StaticConfigs/CheckerConfigs.hs"

# Main loop
for checker in "${checkers[@]}"; do
    for block_bound in "${block_bounds[@]}"; do
	for loop_bound in "${loop_bounds[@]}"; do
	    echo "Running checker=$checker block_bound=$block_bound loop_bound=$loop_bound"

	    set -o xtrace
	    edit_sys_config "${checker}" "${block_bound}" "${loop_bound}" "${config_file}"
	    logf="${output_sub_dir}/checker=${checker},bb=${block_bound},lb=${loop_bound}"
	    run_sys "$checker" "${logf}" "${run_whole_dir}"
	    set +o xtrace
	done
    done
done

exit 0
