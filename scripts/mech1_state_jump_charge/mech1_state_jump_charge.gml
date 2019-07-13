

//crouch, stop and delay
if (mech1_jump_charge_step = 0)
{
	grounded = true;
	x_spd = 0;
	
	sprite_index = spr_mech1_jump_charge;
	mech1_jump_charge_timer ++;
	if (mech1_jump_charge_timer >= mech1_jump_charge_timer_max)
	{
		mech1_jump_charge_step = 1;
	}
}

//jump
if (mech1_jump_charge_step = 1)
{
	grounded =false;
	
	sprite_index = spr_mech1_jump_high;
		
	x_spd = 0;
	y_spd = 0;
	y_spd -= mech1_charge_jump_power; 
	jump_number -= 1;
	
	global.AP -= global.AP_chunk;
	mech1_jump_charge_step = 2;
}

//mid jump, dust fx
if (mech1_jump_charge_step = 2 && y_spd < 0)
{
walk_timer++;
if (walk_timer % 2 = 0) {create_dust_particle();}
}

//start falling
if (mech1_jump_charge_step = 2 && y_spd > 0)
{
	state = states.fall;
	mech1_jump_charge_step = 0;
	mech1_jump_charge_timer = 0;

}