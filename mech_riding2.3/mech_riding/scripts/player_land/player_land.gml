function player_land() {
	//var tilemap = layer_tilemap_get_id("TILES_wall")

	var _plat = instance_place(x, y + 1, obj_platform)

	if (place_meeting(x, y + 1, collider) ||
		((_plat && _plat.bbox_top > bbox_bottom) && !but_down))
	{
		state = states.on_ground;
		//y_spd = 0;
		//grounded = true;
	
	
		/// avoid going backwards ///
		if (sliding != 0) 
		{
			if (but_right - but_left != 0) {dir = but_right - but_left;}
			sliding = 0;
		}
	
	
	
		//sfx
		if (!audio_is_playing(sound_land)) 
		{audio_sound_pitch(sound_land,random_range(.8,1.2)); audio_play_sound(sound_land,5,0);}
	
		//vfx
		repeat(6)
		{
			create_dust_particle();
		}
	
		return true;
	}





}
