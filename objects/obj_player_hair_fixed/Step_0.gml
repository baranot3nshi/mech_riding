image_blend = c_yellow

if (sprite_index = spr_player_hair_f)
{
	x_offset = -4
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0;} 
	else {flip_offset = +6;}
} 
	
else 
{
	x_offset = +4
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0;} 
	else {flip_offset = -10;}
	
} 

x= obj_player.x + x_offset + flip_offset

y = obj_player.y-15