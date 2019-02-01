#!/bin/bash

# Set the path to the last argument if it's a directory, and remove it from the
# arguments
if [[ -d $PREFIX/"${!#}" ]]; then
    path=$PREFIX/"${!#}"
    set -- "${@:1:$(($#-1))}"
else
    path=$PREFIX
fi

# Set the level if the first argument is an integer _to_ that integer, shifting
# the arguments
if [[ $1 =~ ^-?[0-9]+$ ]]; then
    level=$1
    shift
else
    level=1
fi

echo 'Password Store'
tree --noreport -L $level $@ $path | sed 's/\.gpg//g' | tail -n +2
