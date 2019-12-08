// Inherit the parent event
event_inherited();
if (sprite_index = spr_nme_ceiling_gun_stop)
{	
	roam_timer = 0;
	roam_timer_max = random_range(100,140);
	state = nme_states.idle;
}
