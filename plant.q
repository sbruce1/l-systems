\l turtle.q

S:();
R:"XF+-[]"!("F+[[X]-X]-F[-FX]+X";"FF";"+";"-";"[";"]");
angle:X:Y:0;T:3.14159265358979323846264*25%180;F:10;

Z:7 {raze R[x]}/("-X");
p:{$[x~"F";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"[";[S::enlist[(X;Y;angle)],S;angle-::T];x~"]";[(X;Y;angle)::first S;S::1_S;angle+::T];::];} each Z;
mat:reverse flip .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;
