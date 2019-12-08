//standard scripts for states like hurt and dead
//special scripts whenever something is different or non-standard

//if any of the enemies wants to do something special with a normal state, 
//substitute the script with a script_execute and put the standard script in the var in Create Event

#region states
switch (state)
{
	case nme_states.idle		: script_execute(script_idle);		break;
	case nme_states.roam		: script_execute(script_roam);		break;
	case nme_states.follow		: script_execute(script_follow);	break;
	case nme_states.jump		: nme_state_jump();					break;
	case nme_states.fall		: nme_state_fall();					break;
	case nme_states.land		: nme_state_land();					break;
	case nme_states.atk1		: script_execute(script_atk1);		break;
	case nme_states.atk2		: script_execute(script_atk2);		break;
	case nme_states.hurt		: nme_state_hurt();					break;
	case nme_states.dead		: nme_state_dead();					break;
}
#endregion

if (HP > 0) {image_xscale = dir;}

if (!flying) {apply_gravity();} 
else		 {apply_y_spd(y_spd);}

apply_x_spd(x_spd);

// shaking
if (shake > 0)
{
	spr_x = start_x + random_range(1, -1);
	spr_y = start_y + random_range(1, -1);
	
	shake = lerp(shake,0,.8)
}
else
{
	spr_x = x;
	spr_y = y;
	start_x = x;
	start_y = y;
}