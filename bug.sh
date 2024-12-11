#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle bug that can lead to unexpected behavior.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # ... process the file ...
  else
    echo "Error: File '$file' not found"
  fi
  # Bug: Missing the break statement when file is not found.
  #       This means the loop keeps processing even after an error.
  
  #Corrected Code
  # if [ -f "$file" ]; then
  #   echo "Processing: $file"
  #   # ... process the file ...
  # else
  #   echo "Error: File '$file' not found"
  #   break  #Exit the loop if a file is not found
  # fi
done