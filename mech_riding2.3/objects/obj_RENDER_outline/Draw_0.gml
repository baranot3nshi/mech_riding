//create the surface
if (!surface_exists(surface_hair))
{
surface_hair = surface_create(room_width,room_height)
}
//if the surface already exists
else 
{
	//target the surface
	surface_set_target(surface_hair)
	//clear junk from previous frames
	draw_clear_alpha(c_black,0)
	//draw the hair
	with(obj_player_hair)
	{
		event_perform(ev_draw,0)
	}
	//de-target the surface
	surface_reset_target();
	
	#region//shader method
	//shader_set(sh_draw_outline);
	//shader_set_uniform_f(upixel_w,texel_w)
	//shader_set_uniform_f(upixel_h,texel_h)
	//draw surface
	//draw_surface(surface_hair,0,0)
	//shader_reset();
	#endregion
	#region//offset surface method (BEST)
	//make black
	var wx = 0
	var wy = 0
	
	//set alpha for character blinking
	//if (obj_player.state != states.mech) {var alpha = obj_player.visible;}
	//else								 {var alpha = obj_mech1.visible;}
	
	var alpha = obj_player.visible;
	
	draw_set_alpha(alpha)
	
	gpu_set_fog(true,c_black,0,1)
	//draw outline
	draw_surface(surface_hair,wx,wy+1)
	draw_surface(surface_hair,wx+1,wy)
	draw_surface(surface_hair,wx,wy-1)
	draw_surface(surface_hair,wx-1,wy)
	//toggle black away
	gpu_set_fog(false,c_black,0,1)
	//draw the hair again
	draw_surface(surface_hair,wx,wy)
	
	draw_set_alpha(1)
	#endregion
}