#!/usr/bin/env bash

for file in *; do

  if [ -f "$file" ]; then

    cwebp "$file" -q 80 -o "${file%.*}.webp"

  fi

done
