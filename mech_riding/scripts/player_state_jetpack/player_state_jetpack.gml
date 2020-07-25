player_jump_atk();

jetpack_timer += global.dt
jetpack_timer = clamp(jetpack_timer,0,10)

global.AP -=4;

//AUDIO
//set pitch
var pitch = random_range(.9,1.1) *(jetpack_timer*.1)
	audio_sound_pitch(snd_jetpack,pitch)
	
if (!audio_is_playing(snd_jetpack))
{
	//play looped
	audio_play_sound(snd_jetpack,5,1);
}


//collision
if (y_spd > -jet_spd_max && !place_meeting(x,y-1, obj_wall))
{
	y_spd -= jet_power + weight + max(0, abs(y_spd)/20);

		sprite_index = spr_player_jump_upward;
		
		//FX
		if (y_spd > 0 && !instance_exists(obj_jetpack_FX))
		{
			var fx = instance_create_depth(x,y,depth+5,obj_jetpack_FX)
			fx.image_speed = 3
		}
}

if (but_JUMP_released || global.AP <= 0)
{
	audio_stop_sound(snd_jetpack)
	state = states.fall;
	jetpack_timer = 0;
}



//smoke
if (y_spd < 0)
{
	instance_create_depth (x+ (random_range(-4,-2) - 5) * dir, random_range(y-4,y-2),depth + 10, obj_jetpack_particle)
	instance_create_depth (x+ (random_range(+4,+2) - 5) * dir, random_range(y-4,y-2),depth + 10, obj_jetpack_particle)
}