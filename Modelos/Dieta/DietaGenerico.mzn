%Modelo genérico

int: n;
array [1..n] of int: p;
array [1..n] of int: g;
array [1..n] of int: c;

array [1..n] of int: cost;

int: RP;
int: RG;
int: RC;

array [1..n] of int: x;

%Objetivo

var int: utilidad;
constraint sum(j in 1..n)(x[j] * p[j]) >= RP;
constraint sum(j in 1..n)(x[j] * g[j]) >= RG;
constraint sum(j in 1..n)(x[j] * c[j]) >= RC;

constraint utilidad = sum(j in 1..n)(x[j] * cost[j]);
solve minimize utilidad;