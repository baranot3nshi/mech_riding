if (global.PAUSE_MENU_show)
{
	///=======================================================================///
	#region BG
	///=======================================================================///
	
	var vw = global.view_width;
	var vh = global.view_height;
	
	// bg //
	var frame_cx = vw/2
	var frame_cy = vh/2
	
	draw_sprite_tiled(spr_UI_pause_menu_BG,0,timer,timer);
	
	// portrait //
	var portrait_x = frame_cx - 187;
	var portrait_y = frame_cy + 47;
	draw_sprite(portrait, 0, portrait_x, portrait_y);
	
	// frame //
	draw_sprite(spr_UI_pause_menu_frame,0,frame_cx,frame_cy);
	
	// words //
	var settings_text_x	= frame_cx + 97;
	var settings_text_y = frame_cy - 111;
	draw_text_outlined(settings_text_x,settings_text_y,c_black,c_white,"Settings")
	
	var hint_text_x = frame_cx + 120;
	var hint_text_y = frame_cy + 94;
	draw_text_outlined(hint_text_x,hint_text_y,c_black,c_white,"Hint")
	
	#endregion
	///=======================================================================///
	
	var inventory_size = ds_grid_width(global.inventory);
	var i = 0; repeat(inventory_size)
	{
		///=======================================================================///	
		#region ICONS
		///=======================================================================///
	

		
		// coordinates
		var spr = global.inventory[# i, inv.icon];
		var icon_x = frame_cx - 145;
		var x_buffer = 31;
	
		// drone y coords
		var icon_y_drone = frame_cy + 13
	
		// human y coords
		var icon_y_human = frame_cy - 59;
	
		// mech y coords
		var icon_y_mech = frame_cy - 33;
	
	
		if (got(i))
		{
			// drone
			if (i < item.drone_size)
			{
				draw_sprite(spr, 0, icon_x + x_buffer*i, icon_y_drone)
			}
	
			// human
			else if (i < item.human_size && i > item.drone_size)
			{
				draw_sprite(spr, 0, icon_x + x_buffer * (i - item.drone_size -1), icon_y_human)
			}
	
			// mech
			else if (i < item.mech_size && i > item.human_size)
			{
				draw_sprite(spr, 0, icon_x + x_buffer * (i - item.human_size -1), icon_y_mech)
			}
		}
		#endregion
		///=======================================================================///
		#region CURSOR
		///=======================================================================///
		var cursor_spr_y = 0;
		var row = 0;
	
		if (cursor_y = 0) {cursor_spr_y = icon_y_human; row = item.drone_size + 1}
		else if (cursor_y = 1) {cursor_spr_y = icon_y_mech; row = item.human_size + 1}
		else if (cursor_y = 2) {cursor_spr_y = icon_y_drone; row = 0}
	
		draw_sprite(spr_UI_pause_menu_cursor,0, icon_x + x_buffer * cursor_x,cursor_spr_y)
	
		selected = (cursor_x) + row
	
		#endregion
		///=======================================================================///
		#region DESCRIPTION
		///=======================================================================///
	
		if (i = selected && got(selected))
		{
			var name = global.inventory[# i, inv.name];
			var descr = global.inventory[# i, inv.descr];
			var img = global.inventory[# i, inv.menu_spr]
			var text_x =	frame_cx - 123;
			var name_y =	frame_cy + 40;
			var descr_y =	frame_cy + 60;
			var img_x =		frame_cx + 110;
			var img_y =		frame_cy - 21
	
			if (name != 0)
			{
				//name
				draw_text_outlined(text_x, name_y, c_black, c_white, name)
	
				//descr
				draw_text_outlined_ext(text_x, descr_y,c_black, c_white, descr, 10, 300)
				
				shader_set(shdBktGlitch);

				//resets the shader
				//BktGlitch_config_zero();

				//BktGlitch_set_jumbleness(random_range(0.70,0.75));
				//BktGlitch_set_jumble_resolution(random_range(0.22,0.30));
				//BktGlitch_set_jumble_shift(random_range(0.13,0.20));
				//BktGlitch_set_channel_shift(0.44333);

				//BktGlitch_set_intensity(0.00 + change_FX);

				//img
				draw_sprite(img,0,img_x,img_y)
				
				//shader_reset();

			}
		}
		#endregion
		///=======================================================================///
		i++;
	}
	///=======================================================================///
	#region BG
	///=======================================================================///
	var HPUP_spr = global.inventory[# item.HPUP, inv.icon]
	var HPUP_num = "x" + string(global.inventory[# item.HPUP, inv.have])
	var APUP_spr = global.inventory[# item.APUP, inv.icon]
	var APUP_num = "x" + string(global.inventory[# item.APUP, inv.have])

	var cont_x	= frame_cx + 20
	var hp_y	= frame_cy - 75 
	var ap_y	= frame_cy - 38

	draw_sprite(HPUP_spr, 0, cont_x, hp_y)
	draw_sprite(APUP_spr, 0, cont_x, ap_y)

	draw_text_outlined(cont_x-5,hp_y+5,c_black,c_white, HPUP_num)
	draw_text_outlined(cont_x-5,ap_y+5,c_black,c_white, APUP_num)

	#endregion
	///=======================================================================///
 	#region BUTTONS
	///=======================================================================///
	
	var settings_x = frame_cx + 157 
	var settings_y = frame_cy - 108
	var settings_txt_y = settings_y - 2
	var settings_txt = 0;
	var settings_colour = c_white 
	
	var hint_x = frame_cx + 173
	var hint_y = frame_cy + 95
	var hint_txt_y = hint_y - 2
	var hint_txt = 0;
	var hint_colour = c_white
	
	if (global.current_input = "keyboard") 
	{
		settings_txt = "E"
		hint_txt = "W"
	}
	else if (global.current_input = "gamepad")
	{
		settings_txt = "R"
		hint_txt = "Y"
	}
	
	if (but_CHARGE_charge)	
	{
		draw_sprite(spr_UI_pause_menu_button_settings, 0, settings_x, settings_y)
		settings_txt_y = settings_y -1
		settings_colour = c_light_violet;
	}
	
	if (but_DISMOUNT_charge)	
	{
		draw_sprite(spr_UI_pause_menu_button_hint, 0, hint_x, hint_y)
		hint_txt_y = hint_y -1
		hint_colour = c_light_violet;
	}
	
	draw_set_color_light(settings_colour)
	draw_text(settings_x +14, settings_txt_y, settings_txt)
	draw_set_color_light(hint_colour)
	draw_text(hint_x + 4, hint_txt_y, hint_txt)
	draw_set_color_light(c_white)
	
	
	
	#endregion
	///=======================================================================///
	
	
}

