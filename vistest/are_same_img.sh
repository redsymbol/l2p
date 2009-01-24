#!/bin/bash
# usage:
#   are_same_img.sh first_img second_img
# Return value is 0 if they seem to be the same image, 1 otherwise

# count number of uniq md5sums, which will be either 1 or 2
count=$(md5sum "$1" "$2"  | cut -f 1 -d ' ' | uniq | wc -l)
exit $(($count-1))
