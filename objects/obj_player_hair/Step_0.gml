//when falling, stretch more
//if(obj_player.y_spd > 0) 
//{real_Y = Y-(obj_player.y_spd/3)*2} 
//else 
{real_Y = Y;}

#region	BOTH HAIR COORDINATES	(Y, VISIBLE)
	
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_Y_offset = +1;}
	
	//human & mech walk
	else if (obj_player.sprite_index = spr_player_walk || obj_mech1.sprite_index = spr_mech1_walk)
	{
		timer++;
		if timer%10 = 0 if (anim_Y_offset = 1) anim_Y_offset = 0 else anim_Y_offset = 1
		if timer >= 60 timer = 0;		
	}
	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{anim_Y_offset = -2;}
	
	//jump
	else if (obj_player.state = states.jump || obj_mech1.state = mech1_states.jump_atk)
	{anim_Y_offset = -1;}
	
	//fall
	else if (obj_player.state = states.fall || obj_mech1.state = mech1_states.jump_atk)
	{anim_Y_offset = -1;}
	
	//jetpack
	else if (obj_player.state = states.jetpack)
	{anim_Y_offset = -1;}
	
	//mech jump charge
	else if (obj_mech1.state = mech1_states.jump_charge)
	{
		if (obj_mech1.jump_charge_step = 0) 
		{anim_Y_offset = 4;}
		else
		{visible = false;}
	}
	else if (obj_mech1.state = mech1_states.wake)
	{if (anim_Y_offset != 3) {anim_Y_offset = 3;} anim_Y_offset -= 2}
	
	//mech atk1
	else if (obj_mech1.state = mech1_states.ground_atk)
	{anim_Y_offset = 1;}
	
	//mech jump_atk
	else if (obj_mech1.state = mech1_states.jump_atk)
	{
		anim_Y_offset = 2;
	}
	//idle
	else {anim_Y_offset = 0; timer = 0; visible = obj_player.visible;}


#endregion

#region	FRONT HAIR COORDINATES	(X, DEPTH)
if (sprite_index = spr_player_hair_f)
{
	//all flipping
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0;} 
	else {flip_offset = +6;}
	

	//atk
	if (obj_player.state = states.ground_atk && obj_player.atk_step = atk.atk2)
	{depth = obj_player.depth -5}
	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{anim_X_offset = -1;}

	//mech jump charge
	else if (obj_mech1.state = mech1_states.jump_charge)
	{
		if (obj_mech1.jump_charge_step = 0) 
		{depth = obj_player.depth +5;}
		
	}
	
	//mech atk1
	else if (obj_mech1.state = mech1_states.ground_atk)
	{	
		switch(obj_mech1.atk_step)
			{
				case atk.atk1_init: anim_X_offset = 6; break;
				case atk.atk1_post:	anim_X_offset = 9; depth = obj_player.depth -5; break;
				case atk.atk2_init: anim_X_offset = 9;  depth = obj_player.depth -5; break;
				case atk.atk2_post:	anim_X_offset = 10; depth = obj_player.depth -5; break;
			}
		
		
		
	}
	
	else if (obj_mech1.state = mech1_states.jump_atk)
	{
		anim_X_offset = 6;
		depth = obj_player.depth -5;
	}
	

	//idle
	else {anim_X_offset = 0; depth = obj_player.depth +5;}
}
#endregion

#region	BACK HAIR COORDINATES	(X)
else if (sprite_index = spr_player_hair_b)
{
	//all flipping
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0} 
	else {flip_offset = -10}
	
	//front hair animation offset
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_X_offset = 0;}

	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{anim_X_offset = -1;}
	
	//mech atk
	else if (obj_mech1.state = mech1_states.ground_atk)
	{	
		switch(obj_mech1.atk_step)
			{
				case atk.atk1_init: anim_X_offset = 5; break;
				case atk.atk1_post:	anim_X_offset = 5; break;
				case atk.atk2_init: anim_X_offset = 3; break;
				case atk.atk2_post:	anim_X_offset = 6; break;
			}
	}
	
	//mech jump atk
	else if (obj_mech1.state = mech1_states.jump_atk)
	{
		anim_X_offset = 2;
	}

	//idle
	else {anim_X_offset = 0;}
}
#endregion


var anim_flipping = sign(obj_player.image_xscale); //needed to flip the animation offset

//apply coordinates
x = lerp(x,	obj_player.x + X+ flip_offset	+anim_X_offset*anim_flipping,	hair_lerp)
y = lerp(y,	obj_player.y + real_Y			+anim_Y_offset,					hair_lerp)

//depth = obj_player.depth -50;
//image_blend = c_red;

alarm[11] = obj_player.alarm[11];
