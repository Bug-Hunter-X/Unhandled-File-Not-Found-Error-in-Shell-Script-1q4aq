#!/bin/bash

# This script is the corrected version which handles the file not found error properly.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # ... process the file ...
  else
    echo "Error: File '$file' not found"
    exit 1  # Exit with an error code
  fi
done