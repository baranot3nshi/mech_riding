//when falling, stretch more
//if(obj_player.y_spd > 0) 
//{real_Y = Y-(obj_player.y_spd/3)*2} 
//else 


if (obj_player.current_mech = mechs.none)
{
	real_Y = Y;
	
	#region	BOTH HAIR COORDINATES	(Y, VISIBLE)
	
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_Y_offset = +1;}
	
	//human & mech walk
	else if (obj_player.sprite_index = spr_player_walk)
	{
		timer += global.dt;
		if timer%10 = 0 if (anim_Y_offset = 1) anim_Y_offset = 0 else anim_Y_offset = 1
		if timer >= 60 timer = 0;		
	}
	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{anim_Y_offset = -2;}
	
	//jump
	else if (obj_player.state = states.jump)
	{anim_Y_offset = -1;}
	
	//fall
	else if (obj_player.state = states.fall)
	{anim_Y_offset = -1;}
	
	//jetpack
	else if (obj_player.state = states.jetpack)
	{anim_Y_offset = -1;}
	
	//idle
	else 
	{
		anim_Y_offset = 0; timer = 0; 
		visible = obj_player.visible;
	}
	

	#endregion

	#region	FRONT HAIR COORDINATES	(X, DEPTH)
	if (sprite_index = spr_player_hair_f)
	{
		//all flipping
		if(obj_player.dir > 0) 
		{flip_offset = 0;} 
		else {flip_offset = +6;}
	

		//atk
		if (obj_player.state = states.ground_atk && obj_player.human_atk_step = atk.atk2)
		{depth = obj_player.depth -5}
	
		//jump atk
		else if (obj_player.state = states.jump_atk)
		{anim_X_offset = -1;}

		//idle
		else {anim_X_offset = 0; depth = obj_player.depth +5;}
	}
	#endregion

	#region	BACK HAIR COORDINATES	(X)
	else if (sprite_index = spr_player_hair_b)
	{
		//all flipping
		if(obj_player.dir > 0) 
		{flip_offset = 0} 
		else {flip_offset = -10}
	
		//front hair animation offset
		//atk
		if (obj_player.state = states.ground_atk)
		{anim_X_offset = 0;}

	
		//jump atk
		else if (obj_player.state = states.jump_atk)
		{anim_X_offset = -1;}

		//idle
		else {anim_X_offset = 0;}
	}
	#endregion

}
if (obj_player.current_mech = mechs.mech1)
{
	
	real_Y = Y - 16;
	
	#region	BOTH HAIR COORDINATES	(Y, VISIBLE)
	
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_Y_offset = +1}
	
	//human & mech walk
	else if (obj_player.sprite_index = spr_mech1_walk)
	{
		timer += global.dt
		if timer%10 = 0 if (anim_Y_offset = 1) anim_Y_offset = 0 else anim_Y_offset = 1
		if timer >= 60 timer = 0;		
	}
	
	//jump
	else if (obj_player.state = states.jump_atk)
	{anim_Y_offset = -1;}
	
	//fall
	else if (obj_player.state = states.jump_atk)
	{anim_Y_offset = -1;}
	
	
	//mech jump charge
	else if (obj_player.state = states.jump_charge)
	{
		if (obj_player.mech1_jump_charge_step = 0) 
		{anim_Y_offset = 4;}
		else
		{visible = false;}
	}
	//else if (obj_player.state = states.wake)
	//{if (anim_Y_offset != 3) {anim_Y_offset = 3;} anim_Y_offset -= 2}
	
	//mech atk1
	else if (obj_player.state = states.ground_atk)
	{anim_Y_offset = 1;}
	
	//mech hammer
	else if(obj_player.state = states.jump_atk_charge && obj_player.sprite_index = spr_mech1_jump_atk_charge_post)
	{anim_Y_offset = 5;}
	
	//idle
	else {
		anim_Y_offset = 0; timer = 0; 
		visible = obj_player.visible;
	}
	

	#endregion

	#region	FRONT HAIR COORDINATES	(X, DEPTH)
	if (sprite_index = spr_player_hair_f)
	{
		//all flipping
		if(obj_player.dir > 0) 
		{flip_offset = 0;} 
		else {flip_offset = +6;}
	

		//mech jump charge
		if (obj_player.state = states.jump_charge)
		{
			if (obj_player.mech1_jump_charge_step = 0) 
			{depth = obj_player.depth +5;}
		
		}
	
		//mech atk1
		else if (obj_player.state = states.ground_atk)
		{	
			switch(obj_player.mech1_atk_step)
				{
					case atk.atk1_init: anim_X_offset = 6; break;
					case atk.atk1_post:	anim_X_offset = 9; depth = obj_player.depth -5; break;
					case atk.atk2_init: anim_X_offset = 9;  depth = obj_player.depth -5; break;
					case atk.atk2_post:	anim_X_offset = 10; depth = obj_player.depth -5; break;
				}
		
		
		
		}
		//mech jump_atk
		//else if (obj_mech1.state = states.jump_atk)
		//{
		//	anim_X_offset = 6;
		//	depth = obj_player.depth -5;
		//}
	

		//idle
		else {anim_X_offset = 0; depth = obj_player.depth +5;}
	}
	#endregion

	#region	BACK HAIR COORDINATES	(X)
else if (sprite_index = spr_player_hair_b)
{
	//all flipping
	if(obj_player.dir > 0) 
	{flip_offset = 0} 
	else {flip_offset = -10}
	
	
	//mech atk
	if (obj_player.state = states.ground_atk)
	{	
		switch(obj_player.atk_step)
			{
				case atk.atk1_init: anim_X_offset = 5; break;
				case atk.atk1_post:	anim_X_offset = 5; break;
				case atk.atk2_init: anim_X_offset = 3; break;
				case atk.atk2_post:	anim_X_offset = 6; break;
			}
	}
	
	//mech jump atk
	//else if (obj_mech1.state = states.jump_atk)
	//{
	//	anim_X_offset = 2;
	//}

	//idle
	else {anim_X_offset = 0;}
}
#endregion
}

if (obj_player.current_mech = mechs.transition)
{
	//real_Y = Y - 3
	visible = false;
}

var anim_flipping = sign(obj_player.dir); //needed to flip the animation offset

//apply coordinates
if (!instant)//failsafe for room start
{
	x = lerp(x,	obj_player.x + X+ flip_offset	+anim_X_offset*anim_flipping,	hair_lerp)
	y = lerp(y,	obj_player.y + real_Y			+anim_Y_offset,					hair_lerp)
}
else
{	
	x = X+ flip_offset	+anim_X_offset*anim_flipping
	y = real_Y			+anim_Y_offset
	instant = false;
}

//flash with the player
alarm[11] = obj_player.alarm[11];