#!/bin/bash
make

n=`nproc`

file=`ls *.f`
exe=${file%.*}

mpirun -np $n ./$exe 
