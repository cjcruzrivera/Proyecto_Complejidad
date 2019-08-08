var bool: x1;
var bool: x2;
var bool: x3;
var bool: x4;
var bool: x5;
var bool: x6;
var bool: x7;
var bool: x8;
var bool: x9;
var bool: x10;

var int: p;

constraint 100 * x1 + 155 * x2 + 50 * x3 + 112 * x4 + 70 * x5 + 80 * x6 + 60 * x7 + 118 * x8 + 110 * x9 + 55 * x10 <= 700;
constraint p = 100 * x1 + 155 * x2 + 50 * x3 + 112 * x4 + 70 * x5 + 80 * x6 + 60 * x7 + 118 * x8 + 110 * x9 + 55 * x10;

solve maximize p;

output["Peso Total:", show(p)," C1: ", show(x1), " C2: ", show(x2), " C3: ", show(x3), " C4: ", show(x4), " C5: ", show(x5), " C6: ", show(x6), " C7: ", show(x7), " C8: ", show(x8), " C9: ", show(x9), " C10: ", show(x10)]