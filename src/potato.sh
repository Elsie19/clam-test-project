#!/bin/bash

# @file potato.sh
# @brief A library to print something special

# @description Printing function
# @example
#     potato.potato "Henry"
#
# @arg $1 string A value to print
function potato.potato() {
	echo "Hello ${1:?}"
}
