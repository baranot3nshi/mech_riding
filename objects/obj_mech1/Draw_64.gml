if (state != states.wait)
{
	var _s = 7;
	
	draw_set_color(c_orange)
	draw_set_alpha(1)
	
	draw_text(10,_s*0,"state = " + string(state))
	draw_text(10,_s*1,"x_spd = " + string(x_spd))
	draw_text(10,_s*2,"y_spd = " + string(y_spd))
	//draw_text(10,_s*3,"atk_step = " + string(atk_step))
	//draw_text(10,_s*4,"jumps = " + string(jump_number)+"/"+string(jump_number_max))
	draw_text(10,_s*5,"dash_spd = " + string(dash_spd))
	draw_text(10,_s*6,"dir = " + string(dir))
	draw_text(10,_s*7,"colliding = " + string(colliding))
	
	draw_set_color(c_white)
}