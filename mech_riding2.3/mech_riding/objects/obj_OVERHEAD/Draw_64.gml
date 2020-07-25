#region fade_FX
if (global.fade_FX_alpha != 0)
{
	draw_set_alpha(global.fade_FX_alpha)
	draw_set_colour(global.fade_colour)
	
	draw_rectangle(	-50,					-50,
					global.view_width+50,	global.view_height+50,
					false);
	
	draw_set_alpha(1);
	draw_set_colour(c_white);
}

#endregion