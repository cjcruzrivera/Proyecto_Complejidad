var int: x1;
var int: x2;
var int: x3;
var int: x4;
var int: x5;
var 0..10000: c;

constraint 0.08 * x1 + 0.25 *x3 + 0.12*x4 + 0.08* x5 >= 550;
constraint 0.01 * x1 + 0.9 *x2 + 0.36*x3 + 0.03* x4 >= 600;
constraint 0.55 * x1 + 0.75 *x4 + 0.5*x5 >= 2000;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint x4 >= 0;
constraint x5 >= 0;
constraint c = 0.25 * x1 + 0.5 *x2 + 1.2 *x3 + 0.6*x4 + 1.5* x5;

solve minimize c;

output ["Pan=", show(x1), "\n Mantequilla= ", show(x2), "\n Queso = ", show(x3), "\n Cereal = ", show(x4), "\n Barra dietética = ", show(x5)];
