enum drone_states {
	idle,
	follow,
	shoot
	
}

state = drone_states.idle;

follow_x = obj_player.x - 10;
follow_y = obj_player.y - 20;

spd = .2