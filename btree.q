\l turtle.q

S:();
A:"0";
R:"10[]"!("11";"1[0]0";"[";"]");
angle:X:Y:0;T:3.14159265358979323846264%4;F:10;

Z:8 {raze R[x]}/A;
p:{$[x in "10";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"[";[S::enlist[(X;Y;angle)],S;angle-::T];[(X;Y;angle)::first S;S::1_S;angle+::T]];} each Z;
mat:reverse flip .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;