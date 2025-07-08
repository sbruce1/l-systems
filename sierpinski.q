\l turtle.q

R:"AB-+"!("B-A-B";"A+B+A";"-";"+");
angle:X:Y:0;T:3.14159265358979323846264%3;F:10;

Z:7 {raze R[x]}/"A";
p:{$[x in "AB";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"-";angle-::T;angle+::T];} each Z;
mat:reverse .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;
