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
	#region charging attacks
	//charging code
	if(but_SQUARE_charge)
	{
		if (!atk_charged)
		{
			atk_charge_timer ++;
	

	}
			#region particle FX
			//adjusting the center
			if ((atk_charge_timer > 15 && atk_charge_timer%2 = 0) || atk_charged)
			{
				//drawing the particle
				if (image_xscale = 1) {var r1 = -10, var r2 = +14} else {r1 = -14; r2 =+10}
				var part =instance_create_depth( random_range(x+r1,x+r2)
												,random_range(y,y-24)
												,depth-5,obj_charge_particle)
				//making the particle speed more and more	
				part.spd = atk_charge_timer/750;
			}
			#endregion
		
		//if the timer reaches max
		if (atk_charge_timer > atk_charge_timer_max)
		{
			atk_charged = true;
		}
	}
	//if not holding stop charging and reset timer
	else
	{
	atk_charge_timer = 0;
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
