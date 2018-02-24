var a = argument0;
var length = array_length_1d(a);

var j, i, swap;
for (i = length - 1; i > 0; i--) 
{
	j = intRandom(i+1);
	swap = a[i];
	a[i] = a[j];
	a[j] = swap;
}

return a;