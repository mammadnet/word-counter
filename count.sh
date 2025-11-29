#!/bin/bash

if [ $1 ]; then
    if [ -e $1 ]; then
        file_path=$(realpath $1)
        awk -f ./count.awk "$file_path"
    else
        echo "File not exist: ./$1"
    fi
else
    echo STOP WITH  ctrl+d
    awk -f ./count.awk
fi