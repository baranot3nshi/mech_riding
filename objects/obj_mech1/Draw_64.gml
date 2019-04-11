if (state != states.wait)
{
	draw_set_color(c_purple)
	draw_set_alpha(1)
	
	draw_text(10,10,state)
	draw_text(10,10+15,x_spd)
	draw_text(10,10+30,y_spd)
	//draw_text(10,10+45,"atk_step = " + string(atk_step))
	//draw_text(10,10+60,"jumps = " + string(jump_number)+"/"+string(jump_number_max))
	draw_text(10,10+75,"dash_spd = " + string(dash_spd))
	draw_text(10,10+90,"dir = " + string(dir))
	draw_set_color(c_white)
}