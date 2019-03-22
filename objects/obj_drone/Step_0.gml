switch(state)
{
	case drone_states.idle: drone_state_idle();
	case drone_states.follow: drone_state_follow();
	case drone_states.shoot: drone_state_shoot();
}

image_xscale = obj_player.image_xscale;

follow_x = obj_player.x - sign(image_xscale)*10;
follow_y = obj_player.y - 20;

