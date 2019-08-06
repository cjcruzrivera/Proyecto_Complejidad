var float: x1;
var float: x2;
var float: x3;
var float: x4;
var float: x5;
var float: c;

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

output ["x1=", show(x1), "\n x2=", show(x2), "\n x3=", show(x3), "\n x4=", show(x4), "\n x5=", show(x5)];
