player_jump_atk();

if (y_spd > -jet_spd_max && !place_meeting(x,y-1, obj_wall))
{
	y_spd -= jet_power + weight + max(0, abs(y_spd)/20);

		sprite_index = spr_player_jump_upward;
		
		if (y_spd > 0 && !instance_exists(obj_jetpack_FX))
		{
			instance_create_depth(x + jetpack_FX_offset,y-3,depth+5,obj_jetpack_FX)
		}
}

if (but_JUMP_released)
{
	state = states.fall;
}

if (y_spd < 0)
{
	//F
	instance_create_depth (x+ random_range(-4,-2) + jetpack_FX_offset, random_range(y-6,y-4),depth + 5, obj_jetpack_particle)
	instance_create_depth (x+ random_range(+4,+2) + jetpack_FX_offset, random_range(y-6,y-4),depth + 5, obj_jetpack_particle)
}