%Lectura de datos:
int: n;
array[1..n] of int: cr1;
array[1..n] of int: cr2;
array[1..n] of int: cr3;
array[1..n] of int: desperdicios;
int: C1;
int: C2;
int: C3;

%Variables:
array[1..n] of var int: combinaciones;

%Restricciones:
constraint sum(i in 1..n)( cr1[i]* combinaciones[i] ) >= C1;
constraint sum(i in 1..n)( cr2[i]* combinaciones[i] ) >= C2;
constraint sum(i in 1..n)( cr3[i]* combinaciones[i] ) >= C3;
constraint forall (i in 1..n) (combinaciones[i] >= 0);

%Objetivo
var int: s;
constraint s = sum(i in 1..n)( combinaciones[i]);
solve minimize s;

output [ "S =", show(s)] ;
output [ "\n Cantidad por combinacion =", show (combinaciones) ] ;
