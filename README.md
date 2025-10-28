# ty

`ty` is a helper library for **type conversions**.

## Conversion to numbers
    q).ty.int 100f
    100i
    q).ty.int "10"
    10i
    q).ty.short ("10";100)
    10 100h

## Conversion to string / symbols
    q).ty.str 100
    "100"
    q).ty.str (100;`hey)
    "100"
    "hey"
    q).ty.sym (`hi;"there")
    `hi`there
    
**Note** When casting from large lists of strings, better performance can be achieved by casting manually e.g.

	q)L:string til 10000000
	q)\t .ty.long L
	239
	q)\t "J"$L
	132

There should be little to no performance impact for other list types.
	