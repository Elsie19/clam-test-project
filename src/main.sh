#!/bin/bash

#include <stdout.sh>

#include <stdtest.sh>

#include "potato.sh"

# @file main
# @brief Le main function

# @description prints potato
# @example
#     potato
function potato() {
    echo "potato"
}

msg '-n Hello world!'

if ! prompt.yes_no "Do you like crayfish" like_crayfish; then
    err "Failed to get input!"
    exit 1
fi

# Note the `:?` in case any bugs slip through that leave the variable empty
case "${like_crayfish:?}" in
    "Y") msg "You do like crayfish" && exit 0 ;;
    "N") msg "You don't like crayfish" && exit 1 ;;
esac
