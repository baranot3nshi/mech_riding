y_spd = .5

if(!instance_exists(obj_player_jump_atk)) {sprite_index = spr_player_wall_slide;}

//smoke part
wall_slide_timer += global.dt;
if (wall_slide_timer % 3 = 0)
{
	instance_create_depth(random_range(x-3,x+3)-7*dir,y-random_range(15,21),depth+5,obj_dust_particle)
}

//dir
if (sliding = "left") {dir = 1}
if (sliding = "right"){dir = -1}

//land
player_land();
//atk
player_wall_slide_atk();



#region//walkoff
if (wall_slide_timer >= 10)
{
	if ((sliding = "left" && !place_meeting(x-1,y,obj_wall)) ||
		(sliding = "right" && !place_meeting(x+1,y,obj_wall)))
		{
			state = states.fall;
			//alarm[0] = 10;
			x_spd = 0;
		}


	//if not moving into the wall, disengage
	if	(	
			(sliding = "left" && !but_left)  ||
			(sliding = "right" && !but_right)
		)
	{
		x_spd = 0;
		state = states.fall;
		alarm[0] = 10;
		sliding = 0;
	}
}
#endregion

#region//wallkick
if (but_JUMP_pressed && jump_number > 0
&& !but_down && got(item.wall_jump)
)
{
	y_spd = 0;
	y_spd -= jump_power; 
	jump_number -= 1;
	state = states.jump;
	
	if (sliding = "left") {x_spd = 2}
	if (sliding = "right"){x_spd = -2}
	
	audio_play_sound(sound_jump,5,0);
	repeat(4)
	{instance_create_depth(random_range(x-3,x+3)-7*dir,y-random_range(4,8),depth+5,obj_dust_particle)}
}
#endregion