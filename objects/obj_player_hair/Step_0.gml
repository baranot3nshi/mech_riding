//when falling, stretch more
if(obj_player.y_spd > 0) 
{real_Y = Y-(obj_player.y_spd/3)*2} 
else {real_Y = Y;}

//FRONT HAIR COORDINATES
if (sprite_index = spr_player_hair_f)
{
	//all flipping
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0;} 
	else {flip_offset = +6;}
	
	//front hair animation offset
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_X_offset = -1; anim_Y_offset = +1; depth = obj_player.depth +5}
	
	//charge
	else if (obj_player.state = states.on_ground && obj_player.x_spd = 0 && obj_player.atk_charged)
	{anim_X_offset = 2; depth = obj_player.depth -5;}
	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{
		anim_X_offset = -1; anim_Y_offset = 0;
	}
	//idle
	else {anim_X_offset = 0; anim_Y_offset = 0; depth = obj_player.depth +5;}
}



//BACK HAIR COORDINATES
else if (sprite_index = spr_player_hair_b)
{
	//all flipping
	if(obj_player.image_xscale > 0) 
	{flip_offset = 0} 
	else {flip_offset = -10}
	
	//front hair animation offset
	//atk
	if (obj_player.state = states.ground_atk)
	{anim_X_offset = 0; anim_Y_offset = +1;}
	//charge
	else if (obj_player.state = states.on_ground && obj_player.x_spd = 0 && obj_player.atk_charged)
	{anim_X_offset = -2}
	
	//jump atk
	else if (obj_player.state = states.jump_atk)
	{
		anim_X_offset = -1; anim_Y_offset = 0;
	}
	//idle
	else {anim_X_offset = 0; anim_Y_offset = 0}
}

var anim_flipping = sign(obj_player.image_xscale); //needed to flip the animation offset

//apply coordinates
x = lerp(x,	obj_player.x + X+ flip_offset	+anim_X_offset*anim_flipping,	hair_lerp)
y = lerp(y,	obj_player.y + real_Y			+anim_Y_offset,					hair_lerp)

//depth = obj_player.depth -50;
//image_blend = c_red;