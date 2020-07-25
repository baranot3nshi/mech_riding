if (input_on) {input_get();}
	
if (global.PAUSE_MENU_show)
{
	global.screenfreeze = 1;
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
	if ((but_start || but_CANCEL) && timer < - 1) {fade_fx = "start"; obj_GAME.pause_timer = 0;}
	
}

else {
	timer = 0;
}


// FADE FX
if (fade_fx = "start")
{
	// set up fading fx
	global.fade_colour = c_black;
	global.fade_FX_alpha += .07;

	// fade start
	if (global.fade_FX_alpha >= 1) {fade_fx = "end"}
}
if (fade_fx = "end")
{
	// fade end
	global.fade_FX_alpha -= .07;
	global.PAUSE_MENU_show = false;
	
	if (global.fade_FX_alpha <= 0) {fade_fx = "stop"}
}