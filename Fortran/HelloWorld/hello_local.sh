#!/bin/bash
n=`nproc`
#echo $n
mpirun -np $n ./HelloWorld_MPI 
