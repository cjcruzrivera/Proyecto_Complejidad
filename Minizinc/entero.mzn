%  Esto e s un e jemplo

var 0..1 : x1; var 0..1 : n_x1;
var 0..1 : x2; var 0..1 : n_x2;
var 0..1 : x3; var 0..1 : n_x3;
var 0..1 : x4; var 0..1 : n_x4;
var 0..1 : x5; var 0..1 : n_x5;
var 0..1 : x6; var 0..1 : n_x6;

constraint x1 + n_x1 = 1;
constraint x2 + n_x2 = 1;
constraint x3 + n_x3 = 1;
constraint x4 + n_x4 = 1;
constraint x5 + n_x5 = 1;
constraint x6 + n_x6 = 1;

constraint x1 + n_x2 + x3 >= 1;
constraint x2 + x4 + x5 >= 1;
constraint x4 + x6 >= 1;

solve satisfy; 
output ["\nx1=", show(x1), "\t -x1=",show( n_x1), "\nx2=", show(x2), "\t -x2=",show( n_x2), "\nx3=", show(x3), "\t -x3=",show( n_x3), "\nx4=", show(x4), "\t -x4=",show( n_x4), "\nx5=", show(x5), "\t -x5=",show( n_x5), "\nx6=", show(x6), "\t -x6=",show( n_x6), ];