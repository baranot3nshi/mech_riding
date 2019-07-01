if (but_DISMOUNT_pressed && current_mech.state = 0)
{
	obj_CAMERA.follow = obj_player;
	state = states.jump
	y_spd -= jump_power;
}