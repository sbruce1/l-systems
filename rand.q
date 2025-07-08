\l turtle.q

N:10;
chars:"FG";
consts:"-+";
l1:1+rand[N];
l2:1+rand[N];
r1:@[N?consts;l1?til N;:;l1?chars];
r2:@[N?consts;l2?til N;:;l2?chars];
R:"FG-+"!(r1;r2;"-";"+");
show R;
angle:X:Y:0;T:rand 3.14159265358979323846264;F:10;

Z:3 {raze R[x]}/rand[3*N]?chars,consts;
p:{$[x in "FG";[r:.turtle.line[X;Y;angle;F];(X;Y)::last each r;:r];x~"-";angle-::T;angle+::T];} each Z;
mat:reverse .turtle.draw . {raze@/:(x[;0];x[;1])}p where 2=count each p;

