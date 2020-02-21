#!/bin/bash

# get file name
file=$1

# get file name without extension
filename=${file%%.*}

# get file extension
extenstion=${file##*.}

# get current datetime
datetime="$(date "+%Y%m%d_%H%M")"

# create new file name.
newfile="$(echo $filename)_$(echo $datetime).$(echo $extenstion)"

# create copy
cp $file $newfile