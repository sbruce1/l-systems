\l turtle.q

R:"ABCD-+F"!("F++FFFF--F--FFFF++F++FFFF--F";"F--FFFF++F++FFFF--F--FFFF++F";"BFA--BFA";"CFC--CFC";"-";"+";"F");
angle:X:Y:0;T:3.14159265358979323846264%4;F:10;

Z:6 {raze R[x]}/("-D--D");

p:{$[x~"F";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"-";angle-::T;x~"+";angle+::T;::];} each Z;
mat:reverse .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;
