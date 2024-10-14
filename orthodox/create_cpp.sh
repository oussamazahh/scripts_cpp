#!/bin/bash

if [ -z "$1" ]
then
    echo "No filename provided. Usage: ./create_cpp.sh <filename>"
    exit 1
fi

cat << EOF > $1.cpp
#include "$1.hpp"
#include <iostream>

$1::$1( void )
{
    std::cout << "Default constructor called" << std::endl;
    this->value = 0;
}

$1::$1( $1 &obj )
{
    std::cout << "Copy constructor called" << std::endl;
    *this = obj;
}

$1::~$1( void )
{
    std::cout << "Destructor called" << std::endl;
}

$1& $1::operator=( $1 &obj )
{
    std::cout << "Copy assignment operator called" << std::endl;
    if (this != &obj)
        this->value = obj.getRawBits(); // Adjust based on your class implementation
    return (*this);
}
EOF
