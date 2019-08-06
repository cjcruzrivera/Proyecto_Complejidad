var float: x1;
var float: x2;
var float: x3;
var float: c;

constraint x1 + x2 + x3 <= 200;
constraint 6 * x1 + 7 *x2 + 5 *x3 <= 500;
constraint x1 >= 0;
constraint x2 >= 0;
constraint x3 >= 0;
constraint c = 450 * x1 + 360 *x2 + 400 *x3;

solve minimize c;

output ["x1=", show(x1), "\n x2=", show(x2), "\n x3=", show(x3)];