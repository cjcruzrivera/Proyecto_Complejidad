var int: x1;
var int: x2;
var 0..10000: c;

constraint 0.4 * x1 + 0.3 *x2 >= 8;
constraint 0.2 * x1 + 0.45 *x2 >= 6;
constraint 0.3 * x1 + 0.1 *x2 >= 7;
constraint x1 >= 0;
constraint x2 >= 0;
constraint c = 40 * x1 + 30 *x2;

solve minimize c;

output ["Aceite crudo ligero = ", show(x1), "\n Aceite crudo pesado = ", show(x2)];