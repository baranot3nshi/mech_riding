input_get();

switch(state)
{
	case drone_states.idle: drone_state_idle();		break;
	case drone_states.follow: drone_state_follow();	break;
	case drone_states.shoot: drone_state_shoot();	break;
}

image_xscale = obj_player.image_xscale;

follow_x = obj_player.x - sign(image_xscale)*10;
follow_y = obj_player.y - 20;
