#!/bin/bash

if [ -z "$1" ]
then
    echo "No filename provided. Usage: ./create_hpp.sh <filename>"
    exit 1
fi

FILENAME_UPPER=$(echo $1 | tr '[:lower:]' '[:upper:]')

cat << EOF > $1.hpp
#ifndef ${FILENAME_UPPER}_HPP
#define ${FILENAME_UPPER}_HPP

#include <iostream>

class $1
{
    private:

    public:
        $1( void );             
        $1( const $1 &obj );     
        ~$1( void );            
        $1& operator=( const $1 &obj );
};

#endif
EOF
