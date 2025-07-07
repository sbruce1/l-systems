// https://en.wikipedia.org/wiki/Barnsley_fern
\l anim.q
// constants
g:100#enlist 200#0;t:xn:yn:.0;
m:((.0 .0;.0 .16);(.85 .04;-.04 .85);(.2 -.26;.23 .22);(-.15 .28;.26 .24));c:(.0 .0;.0 1.6;.0 1.6;.0 .44);
10000 {i:first where rand[1f]<(.01;.86;.93;1);(xn;yn):mmu[m[i];x]+c[i];.[`g;50+floor 10*(xn;yn);:;255];(xn;yn)}\(xn;yn);

.z.ts:{.anim.fts[g]};
\t 100