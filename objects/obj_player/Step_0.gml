input_get();
#region states
switch(state)
{
	case states.on_ground:		player_state_on_ground();		break;
	case states.jump:			player_state_jump();			break;
	case states.fall:			player_state_fall();			break;
	case states.jetpack:		player_state_jetpack();			break;
	case states.ground_atk:		player_state_ground_atk();		break;
	case states.jump_atk:		player_state_jump_atk();		break;
	case states.mech:			player_state_mech();			break;
}
#endregion

//if human unit is active and not riding a mech
if (state != states.mech)
{
	move_player();
		#region charging
	
	//charging code
	if(but_R_charge)
	{
		if (global.AP != global.AP_max) {charge_timer ++;}
		charging = true;
		
		#region particle FX
			//adjusting the center
			if (charging && !instance_exists(obj_charged_FX))
			{
				//drawing the particle
				if (image_xscale = 1) {var r1 = -10, var r2 = +14} else {r1 = -14; r2 =+10}
				var part =instance_create_depth( random_range(x+r1,x+r2)
												,random_range(y,y-24)
												,depth-5,obj_charge_particle)
				//making the particle speed more and more	
				part.spd = .05;
				part.origin = id;
			}
			#endregion
		
		//if the timer reaches max
		if (charge_timer > charge_timer_max)
		{
			if (global.AP != global.AP_max) 
			
			{
				global.AP ++;
				var FX = instance_create_depth(	bbox_left+(bbox_right-bbox_left)/2,
												bbox_top+(bbox_bottom-bbox_top)/2,
												depth-10,obj_charged_FX)
				FX.origin = id;
			}
			charge_timer = 0;
		}
	}
	//if not holding stop charging and reset timer
	else
	{
	charge_timer = 0;
	charging = false;
	}
	
	
	#endregion
	visible = true;
	
	//creates the servodrone
	if (!instance_exists(obj_drone)) {instance_create_depth(x-10,y-10,depth-5,obj_drone)}
	
}
else //if riding a mech
{
	x_spd = current_mech.x_spd;
	y_spd = current_mech.y_spd;
	
	x = current_mech.x + x_spd;
	y = current_mech.y - 16 +y_spd;
	
	visible = false;
	image_xscale = current_mech.image_xscale;
}
