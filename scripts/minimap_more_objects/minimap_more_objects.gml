//minimap_more_objects(object1,object1mnimpsprite,object2,object2mnimpsprite,object3,object3mnimpsprite,...,object8,object8mnimpsprite)
/*
****************
NOTE:
MUST BE PLACED AFTER minimap_objects()
Place in create event of obj_minimap
Do NOT include the player object in this list
You can have a total of 8 objects, any more will cause an error
The minimap sprites must have the same origin as the actual sprites (i.e. if the player sprite is centered, the player minimap sprite must also be centered)
****************
object#: the object to be drawn on the minimap
object#mnimpsprite: the minimap sprite of the object to be drawn on the minimap
*/
for (var i=0; i<argument_count; i+=1)
{ds_list_add(global.minimapobjects,argument[i]);}