input_get();

switch(state)
{
	case mech1_states.on_ground:	mech1_state_on_ground();	break;
	case mech1_states.jump:			mech1_state_jump();			break;
	case mech1_states.fall:			mech1_state_fall();			break;
	case mech1_states.ground_atk:	mech1_state_ground_atk();	break;
	case mech1_states.jump_atk:		mech1_state_jump_atk();		break;
	case mech1_states.jump_charge:	mech1_state_jump_charge();	break;
	case mech1_states.wait:			mech1_state_wait();			break;
	case mech1_states.wake:			mech1_state_wake();			break;
}



if (state < mech1_states.wait) //DO THESE THINGS ONLY WHEN ACTIVE
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
}

