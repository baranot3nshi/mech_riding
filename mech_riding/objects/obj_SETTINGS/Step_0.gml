if (global.SETTINGS_show) 
{	
	if(input_on) {input_get();}
	
	/// =========================================================== ///
	#region LEFT COLUMN
	/// =========================================================== ///

	//move cursor
	if (column_pos = "left")
	{
		/// DOWN
		if (but_down_pressed)
		{
			cursor_v_pos++;
			audio_play_sound(snd_menu_move,0,false)
		}
		
		// UP
		if (but_up_pressed)
		{
			cursor_v_pos--;
			audio_play_sound(snd_menu_move,0,false)
		}

		cursor_v_pos = clamp(cursor_v_pos, 0, setting_command.size - 1);

		/// activate command
		if(but_CONFIRM && alarm[0] = -1)
		{
			column_pos = "right";
			audio_play_sound(snd_menu_confirm,0,false);
		}
		/// close menu
		if (but_CANCEL || (instance_exists(obj_PAUSE_MENU) && but_CHARGE_pressed))
		{
			global.SETTINGS_show = false
			if (instance_exists(obj_TITLESCREEN)) {obj_TITLESCREEN.input_on = true}
			if (instance_exists(obj_PAUSE_MENU)) {obj_PAUSE_MENU.input_on = true; obj_PAUSE_MENU.timer = 0;}
			audio_play_sound(snd_menu_cancel,0,false);
		}

	}
	#endregion	
	/// =========================================================== ///
	#region RIGHT COLUMN
	/// =========================================================== ///
	
	else if (column_pos = "right")
	{
		
		var i = 0; repeat(setting_command.size)
		{
			
			if (i = cursor_v_pos)
			{
				/// =========================================================== ///
				#region LIST TYPE
				/// =========================================================== ///
				if (setting_menu[# i, setting_type.controller] = menu_controller.list)
				{
					
					
					//grabs data for the list it draws
					var current_list =		setting_menu[# i, setting_type.content]
					var cursor_h_pos =		current_list[| menu_list.cursor_pos]
					var script =			current_list[| menu_list.script]
					var options =			current_list[| menu_list.options]
					var options_number = array_length_1d(options)
					
					/// RIGHT
					if (but_right_pressed)
					{
						cursor_h_pos++;
						audio_play_sound(snd_menu_move,0,false)
					}
		
					// LEFT
					if (but_left_pressed)
					{
						cursor_h_pos--;
						audio_play_sound(snd_menu_move,0,false)
					}

					cursor_h_pos = clamp(cursor_h_pos, 0, options_number -1);
					current_list[| menu_list.cursor_pos] = cursor_h_pos;
					
					//back to left column
					if (but_CONFIRM || but_CANCEL)
					{
						column_pos = "left";
					
						script_execute(script,options[cursor_h_pos]);
					
						audio_play_sound(snd_menu_confirm,0,false);
					}
				
				} // list end
				

				#endregion
				/// =========================================================== ///
				#region SLIDER TYPE
				/// =========================================================== ///
				
				if (setting_menu[# i, setting_type.controller] = menu_controller.slider)
				{			
					
					var cursor_h_pos =	setting_menu[# i, setting_type.content] 
					
					/// RIGHT
					if (but_right)
					{
						cursor_h_pos++;
					}
		
					// LEFT
					if (but_left)
					{
						cursor_h_pos--;
					}
					
					cursor_h_pos = clamp(cursor_h_pos, 0, 100);
					setting_menu[# i, setting_type.content] = cursor_h_pos; 
				}
				
				//back to left column
				if (but_CONFIRM || but_CANCEL)
				{
					column_pos = "left";
					
					audio_play_sound(snd_menu_confirm,0,false);
				}
				
				#endregion
				
			} // current cursor position 		
			i++;
		} // repeat loop end
	
		
	} // right column end
	#endregion
	/// =========================================================== ///
} // options is viewed end
else alarm[0] = 3; //to prevent double press of the confirm button upon entering