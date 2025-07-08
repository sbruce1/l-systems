\l turtle.q

R:"FG-+"!("F+G";"F-G";"-";"+");
angle:X:Y:0;T:3.14159265358979323846264%2;F:10;

Z:15 {raze R[x]}/"F";
p:{$[x in "FG";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"-";angle-::T;angle+::T];} each Z;
mat:reverse .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;
