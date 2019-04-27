player_jump_atk();

if (y_spd > -jet_spd_max && !place_meeting(x,y-1, obj_wall))
{
	y_spd -= jet_power + weight + max(0, abs(y_spd)/20);

		sprite_index = spr_player_jump_upward;
		
		if (y_spd > 0 && !instance_exists(obj_jetpack_FX))
		{
			var fx = instance_create_depth(x,y,depth+5,obj_jetpack_FX)
			fx.image_speed = 3
		}
}

if (but_JUMP_released)
{
	state = states.fall;
}

//smoke
if (y_spd < 0)
{
	instance_create_depth (x+ (random_range(-4,-2) - 5) * dir, random_range(y-4,y-2),depth + 10, obj_jetpack_particle)
	instance_create_depth (x+ (random_range(+4,+2) - 5) * dir, random_range(y-4,y-2),depth + 10, obj_jetpack_particle)
}