show_debug_overlay(debug);
#region debug
//draw_set_halign(fa_right);
if (debug)
{
	var _x = 5
	var _y = 40
	var c1 = c_black
	var c2 = c_white
	var _s = 7;

	if (instance_exists(obj_player))
	{
	////draw HP
	draw_text_outlined(_x,5+_y+_s*0,c1,c2,"HP = " + string(global.HP) + "/" + string(global.HP_max))
	draw_text_outlined(_x,5+_y+_s*1,c1,c2,"HP mech = " + string(global.HP_mech1) + "/" + string(global.HP_mech1_max))

	//draw charges
	draw_text_outlined(_x,5+_y+_s*-1,c1,c2,"AP = " + string(global.AP) + "/" + string(global.AP_max))

	//draw player state
	draw_text_outlined(_x,5+_y+_s*2,c1,c2,"state = " + string(obj_player.state))
	
	//draw mech1's postion
	draw_text_outlined(_x,5+_y+_s*3,c1,c2,"mech1_rm = " + string(global.mech1_rm))
	draw_text_outlined(_x,5+_y+_s*4,c1,c2,"mech1_x = " + string(global.mech1_x))
	draw_text_outlined(_x,5+_y+_s*5,c1,c2,"mech1_y = " + string(global.mech1_y))
	
	//drone
	draw_text_outlined(_x,5+_y+_s*6,c1,c2,"drone_type = " + string(global.drone_type))
	
	//player position
	draw_text_outlined(_x,5+_y+_s*7,c1,c2,"dir = " + string(obj_player.dir))
	draw_text_outlined(_x,5+_y+_s*8,c1,c2,"xscale = " + string(obj_player.image_xscale))
	draw_text_outlined(_x,5+_y+_s*9,c1,c2,"jumps = " + string(obj_player.jump_number))
	
	//camera coordinates
	draw_text_outlined(_x,5+_y+_s*10,c1,c2,"camera_x = " + string(global.view_X))
	draw_text_outlined(_x,5+_y+_s*11,c1,c2,"camera_y = " + string(global.view_Y))

	//misc
	draw_text_outlined(_x,5+_y+_s*12,c1,c2,"current_room " + string(room))
	draw_text_outlined(_x,5+_y+_s*13,c1,c2,"fade alpha = " + string(global.fade_FX_alpha))



	draw_set_halign(fa_left);

	//display_write_all_specs(5,5)
	}
}
#endregion

#region controls
if (controls)
{

	//CONTROLS
	var _s = 7;
	var _pos_x = 20;
	var _pos_y = 40;

	if (instance_exists(obj_player))
	{
		if (show_controls)
		{	
			if (obj_player.current_mech = mechs.none)
			{
				draw_text_outlined(_pos_x,_pos_y + _s*0,c_black,c_white,"CONTROLS (NINTENDO CONTROLLER):")
				draw_text_outlined(_pos_x,_pos_y + _s*1,c_black,c_white,"HOLD R = TRIGGER SPECIAL")
				draw_text_outlined(_pos_x,_pos_y + _s*2,c_black,c_white,"B = JUMP     HOLD B = JETPACK")
				draw_text_outlined(_pos_x,_pos_y + _s*3,c_black,c_white,"Y = ATTACK   R+Y = SPECIAL ATTACK")
				draw_text_outlined(_pos_x,_pos_y + _s*4,c_black,c_white,"A = SHOOT    R+A = SPECIAL SHOT")
				draw_text_outlined(_pos_x,_pos_y + _s*5,c_black,c_white,"HOLD L = AIM")
				draw_text_outlined(_pos_x,_pos_y + _s*6,c_black,c_white,"LEFT/RIGHT ARROW = CHANGE DRONE")
			}
			else
			{
				draw_text_outlined(_pos_x,_pos_y + _s*0,c_black,c_white,"CONTROLS (NINTENDO CONTROLLER):")
				draw_text_outlined(_pos_x,_pos_y + _s*1,c_black,c_white,"HOLD R = TRIGGER SPECIAL")
				draw_text_outlined(_pos_x,_pos_y + _s*2,c_black,c_white,"B = JUMP     R+B = SPIN JUMP")
				draw_text_outlined(_pos_x,_pos_y + _s*3,c_black,c_white,"Y = ATTACK   R+Y = DASH     R+Y+Y = DRILL ATTACK")
				draw_text_outlined(_pos_x,_pos_y + _s*4,c_black,c_white,"A = SHOOT    R+A = SPECIAL SHOT")
				draw_text_outlined(_pos_x,_pos_y + _s*5,c_black,c_white,"HOLD L = AIM")
				draw_text_outlined(_pos_x,_pos_y + _s*6,c_black,c_white,"LEFT/RIGHT ARROW = CHANGE DRONE")
				draw_text_outlined(_pos_x,_pos_y + _s*7,c_black,c_white,"X = EJECT")	
			}
		}
		else
		{
			draw_text_outlined(_pos_x,_pos_y + _s*0,c_black,c_white,"TAB: SHOW CONTROLS")
		}
	}

}
#endregion