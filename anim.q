if[not system"p";system"p 5000"];
port:system"p";
mat:128#enlist 128#0;
.z.ph0:.z.ph;
.z.ph:{$["anim.html"~x 0;.h.hp enlist img[y];.z.ph0 x]}[;mat];
ws,:0#0;.z.wo:{ws,::x};.z.wc:{ws::ws except x};.z.ws:value;
img:{[mat]
  "<canvas id='s' width=",string[count first mat]," height=",string[count mat],"></canvas>",
  "<script>var ws = new WebSocket('ws://localhost:",string[port],"');",
  "ws.binaryType = 'arraybuffer';",
  "ws.onmessage = msg => {",
  "  let d = new Uint8ClampedArray(msg.data);",
  "  s.getContext('2d').putImageData(new ImageData(d, ",string[count first mat],", ",string[count mat],"), 0, 0);",
  "console.log(d);",
  "};</script>"};

-1 "Open http://localhost:",string[port],"/anim.html";

/ r:g:b:a:(128*128)#155;
/ mat:128#enlist 128#0;

/ .z.ts:{if[count ws;neg[ws]@\:`byte$r,g,b,a]}
.z.ts:{
  .z.ph:{$["anim.html"~x 0;.h.hp enlist img[y];.z.ph0 x]}[;mat];
  if[count ws;neg[ws]@\:`byte$(raze/)mat,''mat,''mat,''255]}
\t 100
/ if[count ws;neg[ws]@\:`byte$(raze/)mat,''mat,''mat,''255]