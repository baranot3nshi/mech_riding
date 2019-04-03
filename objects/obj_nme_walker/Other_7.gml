event_inherited();

if (sprite_index = spr_nme_walker_atk_init)
{
	atk_step = atk.atk2;
}

else if(sprite_index = spr_nme_walker_atk)
{
	sprite_index = spr_nme_walker_idle;
	atk_step = atk.reset;
}

else if (sprite_index = sprite_dead)
{
	image_index = image_number -1;
}