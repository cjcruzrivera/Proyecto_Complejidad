%Modelo genérico
int: n;
array [1..n] of int: minP;
array [1..n] of int: maxP;
array [1..n] of int: readers;

int: P;

array [1..n] of int: x;
array [1..n] of bool: b;

%Objetivo

var int: utilidad;
constraint forall(j in 1..n)(x[j] <= minP[j]);
constraint forall(j in 1..n)(x[j] >= maxP[j]);
constraint sum(j in 1..n)(x[j] * b[j]) <= P;

constraint utilidad = sum(j in 1..n)(x[j] * readers[j]);
solve minimize utilidad;