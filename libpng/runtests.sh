#!/bin/bash

echo "tesstsss"

make clean ; make

for t in findings_dir/*
  do 
    echo $t
    for file in "$t"/*
      do
      ./pngtest "$file"
      done
  done

gcov *.c

rm *.gcda pngout.png