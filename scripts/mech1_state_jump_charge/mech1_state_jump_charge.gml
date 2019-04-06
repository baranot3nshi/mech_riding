//crouch, stop and delay
if (jump_charge_step = 0)
{
	x_spd = 0;
	
	sprite_index = spr_mech1_jump_charge;
	jump_charge_timer ++;
	if (jump_charge_timer >= jump_charge_timer_max)
	{
		jump_charge_step = 1;
	}
}

//jump
if (jump_charge_step = 1)
{
	sprite_index = spr_mech1_jump_high;
		
	x_spd = 0;
	y_spd = 0;
	y_spd -= charge_jump_power; 
	jump_number -= 1;
	
	global.AP -= global.charge;
	jump_charge_step = 2;
}

//mid jump, dust fx
if (jump_charge_step = 2 && y_spd < 0)
{
walk_timer++;
if (walk_timer % 2 = 0) {create_dust_particle();}
}

//start falling
if (jump_charge_step = 2 && y_spd > 0)
{
	state = mech1_states.fall;
	jump_charge_step = 0;
	jump_charge_timer = 0;

}