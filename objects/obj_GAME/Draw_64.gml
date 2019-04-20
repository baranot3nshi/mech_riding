var vw = global.view_width;
var vh = global.view_height;



#region glitch
//activating the shader

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
draw_surface(application_surface, 0, 0);

//done using the shader
shader_reset();
#endregion

draw_set_halign(fa_right);

//draw HP
draw_text(vw-10,10,"HP = " + string(global.HP) + "/" + string(global.HP_max))
//draw charges
draw_text(vw-10,25,"AP = " + string(global.AP) + "/" + string(global.AP_max))

draw_text(vw-10,40,"screenfreeze = " + string(global.screenfreeze))
draw_text(vw-10,55,"target_framerate = " + string(target_framerate))


draw_set_halign(fa_left);