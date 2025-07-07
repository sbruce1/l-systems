if[not system"p";system"p 5000"];
port:system"p";
ws,:0#0;.z.wo:{ws,::x};.z.wc:{ws::ws except x};.z.ws:value;

img:{[mat]
 "<canvas id='s' width=",string[2*count first mat]," height=",string[2*count mat],"></canvas>",
  "<script>var ws = new WebSocket('ws://localhost:",string[port],"');",
  "ws.binaryType = 'arraybuffer';",
  "ws.onmessage = msg => {",
  "  let d = new Uint8ClampedArray(msg.data);",
  "  s.getContext('2d').putImageData(new ImageData(d, ",string[count first mat],", ",string[count mat],"), 0, 0);",
  "  console.log(msg.data);",
  "};",
  "</script>"};

.z.ph0:.z.ph;
.z.ph:{$["anim.html"~x 0;.h.hp enlist img[mat];.z.ph0 x]};

-1 "Open http://localhost:",string[port],"/anim.html";

.anim.fts:{[x;mat]
    .z.ph:{$["anim.html"~x 0;.h.hp enlist img[y];.z.ph0 x]}[;mat];
    if[count x;neg[x]@\:`byte$`long$(raze/)mat,''mat,''mat,''255]
    }[ws;];

/ r:g:b:a:(128*128)#125;
/ .z.ts:{if[count ws;neg[ws]@\:`byte$r,g,b,a]}
/ \t 100

/ z:3#enlist til 3;
/ (raze/)z,''z,''z,''255
