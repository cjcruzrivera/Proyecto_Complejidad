var int: x1;
var int: x2;
var int: x3;
var int: x4;
var int: x5;
var int: x6;
var int: x7;
var int: x8;
var int: x9;
var 0..10000: c;

constraint 3 * x1 + 2 *x2 + 2*x3 + x4 + x5 + x6 - x7 = 300;
constraint x2 + 2 * x4 + x5 - x8 = 200;
constraint 2 * x3 + x4 + 2 * x5 - 3 * x6 - x9 = 400;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint x4 >= 0;
constraint x5 >= 0;
constraint x6 >= 0;
constraint x7 >= 0;
constraint x8 >= 0;
constraint x9 >= 0;
constraint c = 0.25 * x1 + 0.5 *x2 + 1.2 *x3 + 0.6*x4 + 1.5* x5;

solve minimize c;

output ["x1=", show(x1), "\n x2=", show(x2), "\n x3=", show(x3), "\n x4=", show(x4), "\n x5=", show(x5), "\n x6=", show(x6), "\n x7=", show(x7), "\n x8=", show(x8), "\n x9=", show(x9)];