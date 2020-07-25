#region//TINY AP BAR
var APchunk = global.AP_chunk
var AP = global.AP;

if (instance_exists(obj_player) && 
	(obj_player.state = states.jetpack && AP < APchunk) ||
	(AP < APchunk/5*4)
	)
{
	// frame coordinates
	var frame_x = obj_player.x + 16*obj_player.dir;
	var frame_y = obj_player.bbox_top - 5;
	
	// draw frame
	draw_sprite(spr_ui_tiny_ap_bar,0,frame_x,frame_y)
	
	// bar coordinates
	var bar_x1 = frame_x+2;
	var bar_y1 = frame_y+sprite_get_height(spr_ui_tiny_ap_bar) - 3;
	
	var bar_x2 = bar_x1 + 1;
	var bar_y2 = bar_y1 - (11/APchunk)*AP;
	
	
	if (AP > APchunk/2 || AP%3 = 0) //<--- flicker effect
	{
		// makes the bar white if it's getting lower
		if (AP > APchunk/2) draw_set_color_light(c_light_violet); else draw_set_color_light(c_white);
		
		// draw bar
		draw_rectangle(bar_x1,bar_y1,bar_x2,bar_y2,false)
		draw_set_color_light(c_white);
	
		// draw line
		draw_sprite(spr_ui_tiny_ap_line,0,bar_x1,bar_y2)
	}
}
#endregion