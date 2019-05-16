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

draw_set_halign(fa_right);

var _s = 7;
////draw HP
draw_text(vw-10,5+_s*0,"HP = " + string(global.HP) + "/" + string(global.HP_max))
//draw charges
draw_text(vw-10,5+_s*1,"AP = " + string(global.AP) + "/" + string(global.AP_max))

draw_text(vw-10,5+_s*2,"screenfreeze = " + string(global.screenfreeze))
draw_text(vw-10,5+_s*3,"target_framerate = " + string(target_framerate))
draw_text(vw-10,5+_s*4,"delta = " + string(global.dt))

draw_set_halign(fa_left);

//display_write_all_specs(5,5)




#region show controls
//CONTROLS
//if (instance_exists(obj_player))
//{
//	draw_set_color(c_orange)
	
//	if (obj_player.state != states.mech)
//	{
//		var _s = 7;
//		draw_text(10,_s*0,"CONTROLS:")
//		draw_text(10,_s*1,"HOLD R = TRIGGER SPECIAL")
//		draw_text(10,_s*2,"B = JUMP     HOLD B = JETPACK")
//		draw_text(10,_s*3,"Y = ATTACK   R+Y = SPECIAL ATTACK")
//		draw_text(10,_s*4,"A = SHOOT    R+A = SPECIAL SHOT")
//		draw_text(10,_s*5,"HOLD L = AIM")
//		draw_text(10,_s*6,"LEFT/RIGHT ARROW = CHANGE DRONE")
//	}
//	else
//	{
//		var _s = 7;
//		draw_text(10,_s*0,"CONTROLS:")
//		draw_text(10,_s*1,"HOLD R = TRIGGER SPECIAL")
//		draw_text(10,_s*2,"B = JUMP     R+B = SPIN JUMP")
//		draw_text(10,_s*3,"Y = ATTACK   R+Y = DASH     R+Y+Y = DRILL ATTACK")
//		draw_text(10,_s*4,"A = SHOOT    R+A = SPECIAL SHOT")
//		draw_text(10,_s*5,"HOLD L = AIM")
//		draw_text(10,_s*6,"LEFT/RIGHT ARROW = CHANGE DRONE")
//		draw_text(10,_s*7,"X = EJECT")	
//	}
//	draw_set_color(c_white)
//}
#endregion