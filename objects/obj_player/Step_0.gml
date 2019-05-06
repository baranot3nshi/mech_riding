input_get();
#region states
switch(state)
{
	case states.on_ground:		player_state_on_ground();	break;
	case states.jump:			player_state_jump();		break;
	case states.fall:			player_state_fall();		break;
	case states.jetpack:		player_state_jetpack();		break;
	case states.ground_atk:		player_state_ground_atk();	break;
	case states.jump_atk:		player_state_jump_atk();	break;
	case states.hurt:			player_state_hurt();		break;
	case states.aim:			player_state_aim();			break;
	case states.mech:			player_state_mech();		break;
}
#endregion

//=============================================================================================
//if human unit is active and not riding a mech
if (state != states.mech)
{
	//X INPUT
	if (can_move) {player_input_x();}
	//X APPLY
	apply_x_spd(x_spd);
	
	//Y APPLY
	if (can_fall) {apply_y_spd();}	
	
	//charging
	charge_overtime();
	
	visible = true;
	
	//creating the servodrone
	if (!instance_exists(obj_drone)) {instance_create_depth(x-10,y-10,depth-5,obj_drone)}
}
//=============================================================================================
else //if riding a mech, twintails should still follow your position
{
	//failsafe to avoid twintails to move farther from the character when colliding with a wall
	if (current_mech.colliding)	{x_spd = 0}
	else						{x_spd = current_mech.x_spd;}

	y_spd = current_mech.y_spd;
	dir = current_mech.dir;
	
	x = current_mech.x + x_spd;
	y = current_mech.y - 16 +y_spd;
	
	visible = false;
	image_xscale = current_mech.image_xscale;
}
//=============================================================================================

//vulnerability
if (!vulnerable)
{
	vul_timer++
	if (vul_timer >= vul_timer_max)
	{
		vulnerable = true;
		vul_timer = 0;
	}
	
	if (vul_timer % 3 = 0 && alarm[11] = -1  && state != states.mech) {visible = true ? visible = false : visible = true}
}
if (vul_timer = 0 && state != states.mech) {visible = true;}