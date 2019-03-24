#!/bin/ksh
gmake

n=`nproc`

file=`ls *.f`
exe=${file%.*}

mpirun -np $n ./$exe 
