var int: x1;
var int: x2;
var int: x3;
var 0..10000: c;

constraint x1 + x2 + x3 <= 200;
constraint 6 * x1 + 7 *x2 + 5 *x3 <= 500;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint c = 450 * x1 + 360 *x2 + 400 *x3;

solve maximize c;

output ["Tomate = ", show(x1), "\n Pimientos verdes =", show(x2), "\n Pepinos = ", show(x3)];