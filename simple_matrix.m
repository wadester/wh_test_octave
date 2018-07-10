#!/usr/bin/octave -qf
# Module:   simple_matrix.m
# Purpose:  simple matrix functons
# Notes:  none
#

printf("Simple matrix math:  simple_matrix.m\n")

printf("Create A, 4x3=  ")
A=[1 2 3; 4 5 6; 7 8 9; 10 11 12];
A
printf("Create B, 3x2=  ")
B=[2 0 ; 0 2; 0 1];
B

printf("A*B=  ")
A*B

printf("A'=  ")
A'
