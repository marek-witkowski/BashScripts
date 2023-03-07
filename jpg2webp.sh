#!/usr/bin/env bash

find -name *.jpg -exec mogrify -format webp -quality 75 {} \;
