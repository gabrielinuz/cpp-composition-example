#!/bin/bash

## Compilo código objeto
g++ -Wall -std=c++11 -I./include -c ./src/Arm.cpp 
g++ -Wall -std=c++11 -I./include -c ./src/Brain.cpp
g++ -Wall -std=c++11 -I./include -c ./src/Leg.cpp
g++ -Wall -std=c++11 -I./include -c ./src/Person.cpp
g++ -Wall -std=c++11 -I./include -c ./src/Vest.cpp
g++ -Wall -std=c++11 -I./include -c main.cpp 

## Compilo el Binario
g++ -I./include Arm.o Brain.o Leg.o Person.o Vest.o main.o -o application.bin

## Limpio los códigos objeto
rm ./*.o

## Permisos de ejecución
chmod +x application.bin

## Ejecución
./application.bin