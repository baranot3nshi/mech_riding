function player_atk_charged() {
	if (but_ATK_pressed && !instance_exists(obj_wpn_parent))
	{
		state = states.dash;
	}


}
