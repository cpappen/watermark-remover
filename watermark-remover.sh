#!/bin/bash

file=$1
text=$2

pdftk $file output uncompressed.pdf uncompress
sed -e "/$text/g" < uncompressed.pdf > temp.pdf
pdftk temp.pdf output fixed.pdf compress
rm temp.pdf uncompressed.pdf

exit 0
