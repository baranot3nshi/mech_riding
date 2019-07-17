x_spd = lerp(x_spd, 0, .5);
y_spd = lerp(y_spd, 0, .5);

#region 1	- GO INTO CHARGING ANIMATION
if (atk_step = atk.atk1_init)
{
	if (sprite_index != spr_nme_walker_atk_init)
	{
		sprite_index = spr_nme_walker_atk_init;
		image_index = 0;
	}
	
	x_spd = 0;
	//goes to step 1 in Animation End
}
#endregion
#region 2	- CHARGING ANIMATION
else if (atk_step = atk.atk2)
{
	sprite_index = spr_nme_walker_atk_charge;
	
	atk_timer += global.dt
	if (atk_timer = atk_timer_max) 
	{
		atk_step = atk.atk1; 
		atk_timer = 0;
	}
}
#endregion
#region 3	- ATK ANIMATION, SHOOT BULLET

else if (atk_step = atk.atk1)
{
	if (sprite_index != spr_nme_walker_atk)
	{
		sprite_index = spr_nme_walker_atk;
		image_index = 0;
		
		var bullet = instance_create_depth(x+11*dir,y-14,depth-5,obj_nme_bullet1);
		bullet.spd = 3*dir;
		bullet.image_xscale = image_xscale;
		bullet.dir = dir;
	}
	//goes to step 1 in Animation End
}
#endregion
#region END - RESET

else if (atk_step = atk.reset)
{
	atk_timer = 0;	
	atk_step = atk.atk1_init;
	state = nme_states.idle;
}
#endregion

//go to other states
nme_fall();