C++ Class Generator Scripts
This repository contains two bash scripts that automate the creation of C++ class files (.hpp and .cpp) with a basic structure. These scripts can help streamline your C++ development process by quickly generating boilerplate code for new classes.
Scripts
1. create_hpp.sh
This script generates a header (.hpp) file for a C++ class.
Usage:
    ./create_hpp.sh <classname>
Features:

Creates a header guard using the uppercase class name
Defines a class with the given name
Includes placeholders for private and public sections
Adds constructor and destructor declarations

2. create_cpp.sh
This script generates an implementation (.cpp) file for a C++ class.
Usage:
    ./create_cpp.sh <classname>

Features:

Includes the corresponding header file
Creates empty constructor and destructor definitions

How to Use

Clone this repository or download the scripts.
Make the scripts executable:
    chmod +x create_hpp.sh create_cpp.sh
Run the scripts with a class name as an argument:
    ./create_hpp.sh MyClass
    ./create_cpp.sh MyClass
4.This will generate MyClass.hpp and MyClass.cpp files in the current directory.
Example
Running ./create_hpp.sh Example will create a file named Example.hpp with the following content:
hpp
#ifndef EXAMPLE_HPP
#define EXAMPLE_HPP

#include <iostream>

class Example {
private:

public:
    Example( void );
    ~Example( void );
};

#endif
Running ./create_cpp.sh Example will create a file named Example.cpp with the following content:
cpp
#include "Example.hpp"

Example::Example( void ) {
    // Constructor code here
}

Example::~Example( void ) {
    // Destructor code here
}
Notes

These scripts provide a basic structure. You may need to modify the generated files to add specific includes, member variables, or methods for your class.
The scripts do not check if files already exist. Be careful not to overwrite existing files unintentionally.
The header file includes <iostream> by default. You can modify the script to change or remove this include if it's not needed.

Contributing
Feel free to fork this repository and submit pull requests to improve the scripts or add new features.
