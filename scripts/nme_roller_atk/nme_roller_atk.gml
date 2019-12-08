x_spd = 0;
y_spd = 0;

if (atk1_step = atk.atk1_init)
{
	if(sprite_index != spr_nme_roller_atk_init)
	{
		sprite_index = spr_nme_roller_atk_init;
		image_index = 0;
	}
	
	// goes to atk1_step = atk.atk1 in Animation End
}

if (atk1_step = atk.atk1)
{
	if (sprite_index != spr_nme_roller_atk)
	{
		sprite_index = spr_nme_roller_atk;
		image_index = 0;
		var _hurt = instance_create_depth(x,y,depth-1,obj_nme_roller_atk)
		_hurt.image_xscale = image_xscale;
		_hurt.lifespan = atk1_timer_max
	}
	
	atk1_timer++;
	if (atk1_timer >= atk1_timer_max)
	{
		atk1_step = atk.reset
		atk1_timer = 0;
	}
}

if (atk1_step = atk.reset)
{
	state = nme_states.idle;
	atk1_step = atk.atk1_init;
}