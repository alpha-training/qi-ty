/ Type conversion helpers

\d .ty

/ private
u.s:in[;-10 10h]
u.conv:{[typ;x] $[0=count x;typ$x;t:type x;$[u.s t;upper typ;typ]$x;u.s type first x;$[min u.s type each x;upper[typ]$x;.z.s[typ]each x];.z.s[typ]each x]}

/ public
bool:u.conv"b"
hex:u.conv"x"
short:u.conv"h"
int:u.conv"i"
long:u.conv"j"
real:u.conv"e"
float:u.conv"f"

str:{$[0=count x;"";0=t:type x;.z.s each x;u.s t;x;string x]}
sym:{$[0=count x;`$();0=t:type x;.z.s each x;t in -11 11h;x;`$str x]}
