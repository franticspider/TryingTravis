#!/bin/bash

echo "Checking src compiles. Please Wait."
echo "  compiling.."

g++ main.cpp -o travis_gcc_cpp98
./travis_gcc_cpp98
cppcheck --quiet --error-exitcode=1 main.cpp



echo "Running Tests.  Please Wait."
echo "  compiling.."
#g++ -Wall Shapes-Catch-Testing-Example/Source/Shapes-Catch-Testing-Example.cpp Shapes-Catch-Testing-Example/Source/Implementation/*.cpp -o main
#g++ -Wall Shapes-Catch-Testing-Example/Test/*.cpp Shapes-Catch-Testing-Example/Source/Implementation/*.cpp -o test
cd tests
g++ -std=gnu++11 -Wall tutorial.cpp -o test
cd ..
echo ""
echo "  now testing.."
./tests/test
