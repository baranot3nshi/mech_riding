function nme_hurt() {
	//DIRECTIONAL SYSTEM

	enum hurt_dir {
		right,
		bottom,
		left,
		top
	}


	if (hitting_atk != other.id && (state != nme_states.dead || state != nme_states.hurt))
	{
		hitting_atk = other.id;
	
		// get center coords
		var cx_other =	get_cx_of(other);
		var cx =		get_cx();
		var cy_other =	get_cy_of(other);
		var cy =		get_cy();
	
		// directional failsafe
		if	(
			(hurt_dir_array[hurt_dir.right]		&& cx_other > cx) ||
			(hurt_dir_array[hurt_dir.left]		&& cx_other < cx) ||
			(hurt_dir_array[hurt_dir.top]		&& cy_other > cy) ||
			(hurt_dir_array[hurt_dir.bottom]	&& cy_other < cy)
			)
		 //if shielded
		{
			shake = 1;
		}
		else
		{
			state = nme_states.hurt;
			hurt_timer = 0;
		
		#region VISUAL & SOUND
			// animation
			if (is_array(sprite_hurt))
			{
				sprite_index = sprite_hurt[irandom(array_length_1d(sprite_hurt)-1)]
			}
			else sprite_index = sprite_hurt;
	
			// screen
			global.screenfreeze = 10;
			global.screenshake = 2;
			global.glitch_FX = 3;
	
			// SOUND
			audio_sound_pitch(snd_nme_hit,random_range(.9,1.1))
			audio_play_sound(snd_nme_hit,5,false)
		#endregion
	
			// dmg
			HP -= other.dmg;
			hits_taken++
		
			// MOVEMENT
			x_spd = 0;
			y_spd = 0;
		
			// unmovable is for turrets and other non-pushable enemies
			if (!unmovable && other.pushback != 0 && x_spd = 0)
			{	
				var dir_push = point_direction(obj_player.x,obj_player.y,x,y)
				x_spd = lengthdir_x(other.pushback, dir_push);
				y_spd = lengthdir_y(other.pushback, dir_push);
			}

		}
	}


}
