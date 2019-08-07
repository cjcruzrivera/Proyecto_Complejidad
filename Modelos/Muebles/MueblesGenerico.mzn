%Modelo genérico

int: n;
array [1..n] of int: p;
array [1..n] of int: t;

array [1..n] of int: b;

int: P;
int: T;

array [1..n] of int: x;

%Objetivo

var int: utilidad;
constraint sum(j in 1..n)(x[j] * p[j]) >= P;
constraint sum(j in 1..n)(x[j] * t[j]) >= T;

constraint utilidad = sum(j in 1..n)(x[j] * b[j]);
solve maximize utilidad;