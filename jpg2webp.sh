#!/usr/bin/env bash

find -name '*.jpg' -exec mogrify -format webp -quality 75 {} \;
find -name '*.jpeg' -exec mogrify -format webp -quality 75 {} \;
find -name '*.png' -exec mogrify -format webp -quality 75 {} \;

kdialog --msgbox 'Finished!'
