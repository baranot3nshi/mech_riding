if (but_JUMP_pressed && jump_number > 0
&& !but_down
)
{
	y_spd = 0;
	y_spd -= jump_power; 
	jump_number -= 1;
	state = states.jump;
	
	audio_play_sound(sound_jump,5,0);
	
	repeat(6)
	{
		create_dust_particle();
	}
}