if[not system"p";system"p 5000"];
port:system"p";
.z.ph0:.z.ph;
.z.ph:{$["anim.html"~x 0;.h.hp enlist img;.z.ph0 x]};
ws,:0#0;.z.wo:{ws,::x};.z.wc:{ws::ws except x};.z.ws:value;
img:"<canvas id='s' width=256 height=256></canvas>",
  "<script>var ws = new WebSocket('ws://localhost:",string[port],"');",
  "ws.binaryType = 'arraybuffer';",
  "ws.onmessage = msg => {",
  "  let d = new Uint8ClampedArray(msg.data);",
  "  s.getContext('2d').putImageData(new ImageData(d, 128, 128), 0, 0);",
  "console.log(d);",
  "};</script>";

  -1 "Open http://localhost:",string[port],"/anim.html";

r:g:b:a:(128*128)#155;

.z.ts:{if[count ws;neg[ws]@\:`byte$r,g,b,a]}
\t 100