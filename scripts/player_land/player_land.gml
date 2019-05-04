var _plat = instance_place(x, y + 1, obj_platform)

if (place_meeting(x, y + 1, obj_wall) ||
	(_plat && _plat.bbox_top > bbox_bottom)
	&& !but_down)
{
	state = states.on_ground;
	
	if (!audio_is_playing(sound_land)) 
	{audio_sound_pitch(sound_land,random_range(.8,1.2)); audio_play_sound(sound_land,5,0);}

	repeat(6)
	{
		create_dust_particle();
	}
	
}


