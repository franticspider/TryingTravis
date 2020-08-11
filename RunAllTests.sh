#!/bin/bash
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
