enum drone_states {
	idle,
	follow,
	shoot
	
}

state = drone_states.idle;

follow_x = obj_player.x - 10;
follow_y = obj_player.y - 20;

spd = .2

instance_create_depth(x,y,depth+5,obj_drone_hover_FX)

shoot_animation = obj_drone_shoot1_FX;
shoot_bullet_type = obj_drone_bullet1;