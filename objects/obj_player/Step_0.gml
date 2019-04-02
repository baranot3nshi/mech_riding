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
	
	//charge_hold(); //<--- OLD CHARGING SYSTEM
	charge_overtime_obj();

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
