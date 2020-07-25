if (global.SETTINGS_show) 
{
	var vw = global.view_width;
	var vh = global.view_height;


	/// =========================================================== ///
	#region BG
	/// =========================================================== ///

	draw_set_alpha(.5);
	draw_set_color_light(c_black);

	draw_rectangle(0,0,vw,vh,false);

	draw_set_color_light(c_white);
	draw_set_alpha(1);

	var frame_cx = vw/2;
	var frame_cy = vh/2;

	draw_sprite(spr_UI_settings_frame,0,frame_cx,frame_cy)
	
	draw_set_halign(fa_center)
	draw_text_outlined(vw/2, frame_cy - 71, c_black, c_white, "SETTINGS")

	//generic coordinates
	var center_spacing = 15;
	var separation_buffer = 12;
	var y_buffer = 0;
	
	#endregion
	/// =========================================================== ///
		var i = 0; repeat(setting_command.size)
	{
		/// =========================================================== ///
		#region LEFT COLUMN
		/// =========================================================== ///


		// left coordinates
		draw_set_halign(fa_right)
		var left_text_x = frame_cx - center_spacing;
		
		#region colour
		var left_text_colour = 0;
		
		if (column_pos = "left")
		{
			if (cursor_v_pos = i){left_text_colour = c_light_violet}
			else {var left_text_colour = c_white;}
		}
		else
		{
			if (cursor_v_pos = i){left_text_colour = c_dark_violet}
			else {var left_text_colour = c_light_grey;}
		}
		#endregion
		
		//add spaces between groups
		if (i >= 2) y_buffer = separation_buffer;
		if (i >= 5) y_buffer = separation_buffer*2;
		
		var text_y = frame_cy - 48 + separation_buffer*i + y_buffer;
	
		//draw strings
		draw_text_outlined( left_text_x, text_y, 
							c_black,left_text_colour,
							setting_menu[# i,setting_type.str])	

		#endregion
		/// =========================================================== ///
		#region RIGHT COLUMN
		/// =========================================================== ///
		//right coordinates
		var right_text_x = frame_cx + center_spacing;
		
			/// =========================================================== ///
			#region LIST
			/// =========================================================== ///
			if (setting_menu[# i, setting_type.controller] = menu_controller.list)	
			{
		
		
			//grabs data for the list it draws
			var current_list =		setting_menu[# i, setting_type.content]
			var cursor_h_pos =		current_list[| menu_list.cursor_pos]
			var strings =			current_list[| menu_list.str]
			var strings_number = array_length_1d(strings)
		
			var full_lenght = 90;
		
			var j = 0; repeat (strings_number)
				{
					#region colour
					var right_text_colour = 0;
					if (column_pos = "right" && cursor_v_pos = i)
					{
						if (cursor_h_pos = j) {right_text_colour = c_light_violet}
						else				  {right_text_colour = c_white;}
					}
					else
					{
						if (cursor_h_pos = j) {right_text_colour = c_dark_violet}
						else				  {right_text_colour = c_light_grey;}
					}
					#endregion
					
					var list_text_x = right_text_x + (full_lenght/strings_number)*j;
		
						draw_set_halign(fa_center)
						draw_text_outlined( list_text_x, text_y,
											c_black,right_text_colour,
											strings[j])
					j++;
				}
			} //list end
			#endregion
			/// =========================================================== ///
			#region SLIDER
			/// =========================================================== ///
			if (setting_menu[# i, setting_type.controller] = menu_controller.slider)
			{
				
				// draw slider base
				var slider_x = right_text_x - 5;
				var slider_y = text_y + 11;
				
				draw_sprite(spr_UI_settings_slider_bar,0,slider_x,slider_y);
				
				// draw cursor
				var content = setting_menu[# i, setting_type.content]
				
				var slider_cursor_x_start = slider_x + 3;
				var slider_cursor_y = slider_y - 4;
				var slider_lenght = 56;
				
				var slider_cursor_x = slider_cursor_x_start + ((slider_lenght/100) * content);
				
				draw_sprite(spr_UI_settings_slider_cursor, 0, 
							round(slider_cursor_x), round(slider_cursor_y));
				
				// draw percent
				draw_set_halign(fa_left);
				
				var percent_color = 0;
				if (column_pos = "right" && cursor_v_pos = i) {percent_color = c_white;}
				else										  {percent_color = c_light_grey;}
				
				draw_text_outlined(slider_x + 70, text_y, c_black, percent_color, string(content)+ "%")	
			}
			draw_set_halign(fa_left);
			#endregion
			/// =========================================================== ///


		#endregion
		/// =========================================================== ///
		i++;
	} //repeat loop end
}
