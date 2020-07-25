if (but_ATK_pressed && !instance_exists(obj_wpn_parent))
{
	state = states.ground_atk;
	human_atk_step = 0;
}