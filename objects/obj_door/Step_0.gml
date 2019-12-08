if (!locked)
{
	if (point_distance(x,0,obj_player.x,0) < open_dist)
	{
		state = "open";
		if (sprite_index != spr_door_open)
		{
			image_index = 0;
			sprite_index = spr_door_open;
		}
		//image_blend = c_red;
		
		wall.y = real_round(lerp(wall.y, wall_open_y, spd));
		
	}
	else 
	{
		state = "closed";
		if (sprite_index != spr_door_close)
		{
			image_index = 0;
			sprite_index = spr_door_close;
		}
		//image_blend = c_white;
		
		wall.y = real_round(lerp(wall.y, y, spd));
	}
}