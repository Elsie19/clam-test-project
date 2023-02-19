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

if assert.is_root; then
	err "WHY YOU ROOT!"
	exit 1
fi

msg 'Hello world!'

if ! prompt.yes_no "Do you like crayfish" like_crayfish; then
    err "Failed to get input!"
    exit 1
fi

# Note the `:?` in case any bugs slip through that leave the variable empty
case "${like_crayfish:?}" in
    "Y") msg "You do like crayfish" ;;
    "N") msg "You don't like crayfish" ;;
esac
