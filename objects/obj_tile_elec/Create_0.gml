 //PLEASE PLACE 90 DEGREES WHEN YOU WANT THEM TO BE VERTICAL
event_inherited();



if (image_angle = 0)
	{
	if (!place_meeting(x-tw,y,obj_tile_elec))
	{
		sprite_index = spr_tile_elec_l;
	}

	else if (!place_meeting(x+tw,y,obj_tile_elec))
	{
		sprite_index = spr_tile_elec_r;
	}
}
else
{
	if (!place_meeting(x,y+tw,obj_tile_elec))
	{
		sprite_index = spr_tile_elec_l;
	}

	else if (!place_meeting(x,y-tw,obj_tile_elec))
	{
		sprite_index = spr_tile_elec_r;
	}
}
//image_index = random_range(0,image_number-1)