if (input_on) {input_get();}
	
if (global.PAUSE_MENU_show)
{
	timer -= .05
	var glitch = 6
	
	//move cursor
	{
		/// DOWN
		if (but_down_pressed)
		{
			cursor_y++;
			change_FX = glitch; 
			audio_play_sound(snd_menu_move,0,false)
		}
		
		// UP
		if (but_up_pressed)
		{
			cursor_y--;
			change_FX = glitch; 
			audio_play_sound(snd_menu_move,0,false)
			if (cursor_y > 1) {cursor_x = 4}
		}

		cursor_y = clamp(cursor_y, 0, 2);
		
		/// RIGHT
		if (but_right_pressed)
		{
			cursor_x++;
			change_FX = glitch; 
			audio_play_sound(snd_menu_move,0,false)
		}
		
		// LEFT
		if (but_left_pressed)
		{
			cursor_x--;
			change_FX = glitch; 
			audio_play_sound(snd_menu_move,0,false)
		}

		if (cursor_y <= 1) {cursor_x = clamp(cursor_x, 0, 4)}
		else {cursor_x = clamp(cursor_x, 0, 5)}
	}
	
	if (but_CHARGE_pressed)
	{
		global.SETTINGS_show = true;
		input_on = false;
	}
	
	//type FX timer
	if (change_FX != 0) {change_FX--; 	 if (change_FX < 0) {change_FX = 0;}}
	
	//close
	if (but_start && timer < - 1) {global.PAUSE_MENU_show = false;}
	
}

else {
	timer = 0;
}