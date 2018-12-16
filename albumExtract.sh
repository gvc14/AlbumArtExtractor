#!/bin/sh
fileType=$1
find . -type f -name "*.$1" > list.txt
IFS=$'\n'
while read j; do
name=$(basename -s .$1 "$j")
ffmpeg -i "$j" ~/AlbumArts/"$name".jpg;
done < list.txt 
rm list.txt
