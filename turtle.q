// Turtle Plotting Mechanism for Turtle to Matrix 
\l anim.q

.turtle.mtrx:();

.turtle.line:{[x0;y0;a0;d]
    x1:x0+cos[a0]*d;
    y1:y0+sin[a0]*d;
    s:1+floor max (abs@/:(dx:x1-x0),dy:y1-y0);
        / x = int(round(x0 + dx * i / steps))
        / y = int(round(y0 + dy * i / steps))
    xs:x0+`int$til[s]*dx%s;
    ys:y0+`int$til[s]*dy%s;
    (xs;ys)
 };
/ .turtle.line[0;0;0;10]

.turtle.draw:{[xs;ys]
    xs2:xs+abs min[xs];
    ys2:ys+abs min[ys];
    w:1+max xs2;
    h:1+max ys2;
    .turtle.mtrx:h#enlist w#0j;
    .[`.turtle.mtrx;;:;255] @/: ys2,'xs2;
    .turtle.mtrx
 };