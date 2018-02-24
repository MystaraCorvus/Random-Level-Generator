var this = argument0;
var array = argument1;

if (array_length_1d(array)<=0) return;

array = shuffleArray(array);

var potExits = randomWeighted(array_length_1d(array), 15) + 1;
for (var i = 0; i < potExits; i++)
{
	array[i].officialExit = true;
}
