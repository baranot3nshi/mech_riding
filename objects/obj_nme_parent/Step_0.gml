//standard scripts for states like roam and follow
//special scripts whenever something is different or non-standard

//if any of the enemies wants to do something special with a normal state, 
//substitute the script with a script_execute and put the standard script in the var in Create Event

switch (state)
{
	case nme_states.idle	: script_execute(script_idle);	break;
	case nme_states.roam	: script_execute(script_roam);	break;
	case nme_states.follow	: nme_state_follow();			break;
	case nme_states.jump	: nme_state_jump();				break;
	case nme_states.fall	: nme_state_fall();				break;
	case nme_states.atk1	: script_execute(script_atk1);	break;
	case nme_states.atk2	: script_execute(script_atk2);	break;
	case nme_states.hurt	: nme_state_hurt();				break;
	case nme_states.dead	: nme_state_dead();				break;
}


//falling
if (!grounded && y_spd < fall_spd_max)
{
	y_spd += weight;
}
//apply movement
if (!place_meeting(x,y+y_spd,obj_wall))
{
	y += y_spd
}
else //don't fall through
{
	move_contact_solid(point_direction(x,y,x,y+y_spd),fall_spd_max);
	y_spd = 0;
}