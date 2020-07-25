/// @description Insert description here
// You can write your code in this editor

if (sprite_index = spr_nme_flyer_atk_init)
{
	atk_step = atk.atk2;
}

else if(sprite_index = spr_nme_flyer_atk)
{
	sprite_index = spr_nme_flyer_idle;
	atk_step = atk.reset;
}