#region fade_FX
if (global.fade_FX_alpha != 0)
{
	draw_set_alpha(global.fade_FX_alpha)
	draw_rectangle(	-50,					-50,
					global.view_width+50,	global.view_height+50,
					false);
	draw_set_alpha(1)
}

#endregion