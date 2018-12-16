#!/bin/sh

find . -type f -name "*.flac" > list.txt
x=1;
IFS=$'\n'
while read j; do
name=$(basename -s .flac "$j")
ffmpeg -i "$j" ~/AlbumArts/"$name".jpg;
x=$((x+1));
done < list.txt 
