#!/bin/bash

if [ -z "$1" ]
then
    echo "No filename provided. Usage: ./create_cpp.sh <filename>"
    exit 1
fi

cat << EOF > $1.cpp
#include "$1.hpp"

$1::$1( void ) {
    // Constructor code here
}

$1::~$1( void ) {
    // Destructor code here
}
EOF