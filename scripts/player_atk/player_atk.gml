if (but_ATK_pressed && !instance_exists(obj_wpn_parent))
{
	state = states.ground_atk;
	atk_step = 0;
}