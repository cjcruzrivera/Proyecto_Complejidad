%Modelo genérico

int: n;
array [1..n] of int: gas;
array [1..n] of int: heat;
array [1..n] of int: jet;
array [1..n] of int: lube;

array [1..n] of int: cost;

int: RG;
int: RH;
int: RJ;
int: RL;

array [1..n] of int: x;

%Objetivo

var int: utilidad;
constraint sum(j in 1..n)(x[j] * gas[j]) >= RG;
constraint sum(j in 1..n)(x[j] * heat[j]) >= RH;
constraint sum(j in 1..n)(x[j] * jet[j]) >= RJ;
constraint sum(j in 1..n)(x[j] * lube[j]) >= RL;

constraint utilidad = sum(j in 1..n)(x[j] * cost[j]);
solve minimize utilidad;