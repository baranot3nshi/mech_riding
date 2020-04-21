var _vh = global.view_height;
var _vw = global.view_width;

//background

draw_set_colour(c_black);
draw_rectangle(0,0,_vw,_vh,false);
draw_set_colour(c_white);

scribble_draw(_vw/2,20,"mech_rider")

#region MENU
//coordinates
var tsm_x = 30;
var tsm_y = _vh/2;
var command_buffer = 10;

var cursor_x = tsm_x
var cursor_y = tsm_y+command_buffer*cursor_pos

//draw menu
var i = 0; repeat(ts_menu_size)
{
	
	//change colour if selected
	if (i = cursor_pos) {scribble_draw_set_blend(c_white,1)} else {scribble_draw_set_blend(c_dark_grey,1)}
	
	//draw
	scribble_draw(tsm_x,tsm_y+command_buffer*i,ts_menu[# i, ts_menu_type.str])
	i++;
	
	//reset drawing colour
	scribble_draw_set_blend(c_white,1)
}

//draw cursor
draw_sprite(spr_drone_1,0,cursor_x, cursor_y)
 #endregion