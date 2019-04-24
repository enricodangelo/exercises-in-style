#!/usr/bin/env bash

colors=( '\e[0;30m' '\e[0;31m' '\e[0;32m' '\e[0;33m' '\e[0;34m' '\e[0;35m' '\e[0;36m' '\e[0;37m' '\e[1;30m' '\e[1;31m' '\e[1;32m' '\e[1;33m' '\e[1;34m' '\e[1;35m' '\e[1;36m' '\e[1;37m' '\e[4;30m' '\e[4;31m' '\e[4;32m' '\e[4;33m' '\e[4;34m' '\e[4;35m' '\e[4;36m' '\e[4;37m' '\e[40m' '\e[41m' '\e[42m' '\e[43m' '\e[44m' '\e[45m' '\e[46m' '\e[47m' '\e[0;90m' '\e[0;91m' '\e[0;92m' '\e[0;93m' '\e[0;94m' '\e[0;95m' '\e[0;96m' '\e[0;97m' '\e[1;90m' '\e[1;91m' '\e[1;92m' '\e[1;93m' '\e[1;94m' '\e[1;95m' '\e[1;96m' '\e[1;97m' '\e[0;100m' '\e[0;101m' '\e[0;102m' '\e[0;103m' '\e[0;104m' '\e[0;105m' '\e[0;106m' '\e[0;107m' )
ncolors=${#colors[@]}

# The characters you want to use
chars=( $'\xe2\x95\xb1' $'\xe2\x95\xb2' )
# Precompute the size of the array chars
nchars=${#chars[@]}
# clear screen
clear
# The loop that prints it:
while :; do
    printf -- "${colors[RANDOM%ncolors]}${chars[RANDOM%nchars]}"
done
