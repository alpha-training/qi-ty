/ type conversion helpers

\d .ty

u.conv:{[typ;x] $[t:type x;$[t in -10 10h;upper typ;typ]$x;.z.s[typ]each x]}

bool:u.conv"b"
hex:u.conv"x"
short:u.conv"h"
int:u.conv"i"
long:u.conv"j"
real:u.conv"e"
float:u.conv"f"

str:{$[0=t:type x;.z.s each x;t in -10 10h;x;string x]}
sym:{$[0=t:type x;.z.s each x;t in -11 11h;x;`$str x]}
