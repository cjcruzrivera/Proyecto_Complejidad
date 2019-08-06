%Modelo genérico

int: n;
array [1..n] of int: l;
array [1..n] of int: e;

int: A;
int: D;

array [1..n] of int: x;

%Objetivo

var int: utilidad;
constraint sum(j in 1..n)(x[j]) >= A;
constraint sum(j in 1..n)(x[j] * l[j]) >= D;

constraint utilidad = sum(j in 1..n)(x[j] * e[j]);
solve maximize utilidad;