#!/bin/bash
## Compilo código objeto
g++ -Wall -std=c++11 -I../include -c ../src/Brain.cpp
g++ -Wall -std=c++11 -I../include -I../include/vendors/catch/ -c ./BrainUnitTest.cpp

g++ -Wall -std=c++11 -I../include -c ../src/Leg.cpp
g++ -Wall -std=c++11 -I../include -I../include/vendors/catch/ -c ./LegUnitTest.cpp

## Compilo el Binario
g++ -Wall -std=c++11 Brain.o BrainUnitTest.o -o brainUnitTest.bin
g++ -Wall -std=c++11 Leg.o LegUnitTest.o -o legUnitTest.bin

## Limpio los códigos objeto
rm ./*.o

## Permisos de ejecución
chmod +x brainUnitTest.bin
chmod +x legUnitTest.bin

## Ejecución
./brainUnitTest.bin
./legUnitTest.bin