var this = argument0;

var numPathsIdxs=0;

for(var i = 0; i < array_length_1d(this.instExitList); i++)
{
	var ex=this.instExitList[i];
	if(ex.pathIdx+1>numPathsIdxs) numPathsIdxs = ex.pathIdx+1;
}

return numPathsIdxs;