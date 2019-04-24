#!/usr/bin/env bash

# The characters you want to use
chars=( $'\xe2\x95\xb1' $'\xe2\x95\xb2' )
# Precompute the size of the array chars
nchars=${#chars[@]}
# clear screen
clear
# The loop that prints it:
while :; do
    printf -- "${chars[RANDOM%nchars]}"
done
