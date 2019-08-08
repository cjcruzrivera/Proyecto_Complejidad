int: n;
array [1..n] of int: p;

int: Capacidad;

array [1..n] of var 0..1: x;


var int: pesoCargado;

constraint sum(i in 1..n)(x[i]* p[i]) <= Capacidad;
constraint pesoCargado = sum(j in 1..n)(x[j]*p[j]);

solve maximize pesoCargado;
