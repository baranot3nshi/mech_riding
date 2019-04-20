enum drone_states {
	idle,
	follow,
	shoot,
	aim,
	
	size
	
}

enum drone_type {
	standard,
	laser,
	missile,
	tv,
	
	size
}

type = drone_type.standard;
state = drone_states.idle;

follow_x = obj_player.x - 10;
follow_y = obj_player.y - 20;

spd = .2
dir = 1

instance_create_depth(x,y,depth+5,obj_drone_hover_FX)

shoot_animation = obj_drone_shoot1_FX;
shoot_bullet_type = obj_drone_bullet1;
shoot_cooldown = 20;
shoot_timer = 0;

target = 0
_pStart = [0,0]
_pTop =	 [0,0]
_pBottom = [0,0]

range_w = 170;
range_h = 170;

change_FX = 0;