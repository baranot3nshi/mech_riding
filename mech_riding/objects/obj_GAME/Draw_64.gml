

#region glitch and main appsurf drawing//activating the shader

//if (os_device == os_macosx){
//	shader_set(shdBktGlitchMac);
//}else{
shader_set(shdBktGlitch);
//}

//setting the resolution
BktGlitch_set_resolution_of_application_surface();

//passing time to the shader (making sure nothing stays static)
BktGlitch_set_time(current_time * 0.06);

//resets the shader
BktGlitch_config_zero();

//customize the effect
BktGlitch_set_channel_shift(.005);

//applies effect
BktGlitch_set_intensity(0.00 + global.glitch_FX);

//drawing the application surface
draw_surface_stretched(application_surface, 0, 0,display_get_gui_width(), display_get_gui_height());

//done using the shader
shader_reset();
#endregion

#region GB SHADER
if (gb_shader = true)
{
	shader_set(shGameBoy);

	shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 11, 25, 32);      //  Setting color 1
	shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 47, 105, 87);     //  Setting color 2
	shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 134, 194, 112);   //  Setting color 3
	shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 245, 250, 239);   //  Setting color 4
	
	draw_surface(application_surface, 0, 0);
	
	shader_reset();
	
}
	#endregion