#!/bin/bash
echo "Running Tests.  Please Wait."
#g++ -Wall Shapes-Catch-Testing-Example/Source/Shapes-Catch-Testing-Example.cpp Shapes-Catch-Testing-Example/Source/Implementation/*.cpp -o main
#g++ -Wall Shapes-Catch-Testing-Example/Test/*.cpp Shapes-Catch-Testing-Example/Source/Implementation/*.cpp -o test
cd tests
g++ -Wall tutorial.cpp -o test
cd ..
echo ""
./tests/test
