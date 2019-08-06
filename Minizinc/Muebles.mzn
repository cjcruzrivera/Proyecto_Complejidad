var int: x1;
var int: x2;
var int: c;

constraint 4*x1 + 10*x2 <= 45;
constraint 4*x1 + 4*x2 <= 23;
constraint x1 >= 0;
constraint x2 >= 0;
constraint c = 40*x1 + 30*x2;

solve maximize c;

output ["x1=", show(x1), "\nx2=", show(x2)];