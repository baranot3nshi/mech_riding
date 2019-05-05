enum drone_states {
	idle,
	follow,
	shoot,
	shoot_charge,
	
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


x_spd = 0;
y_spd = 0;
spd = .2
dir = 1

instance_create_depth(x,y,depth+5,obj_drone_hover_FX)

shoot_snd = snd_shoot;
shoot_animation = obj_drone_shoot1_FX;
shoot_bullet_type = obj_drone_bullet1;
shoot_cooldown = 20;

shoot_charge_snd = snd_shoot_charge;
shoot_charge_animation = obj_drone_shoot1_FX;
shoot_charge_bullet_type = obj_drone_bullet2;
shoot_cooldown = 40;

shoot_timer = 0;

//aiming system
target = 0;
_pStart = [0,0]
_pTop =	 [0,0]
_pBottom = [0,0]

lock_on_FX = spr_lock_on_part;

reticule_dist = 50;

range_w = 170;
range_h = 170;

change_FX = 0;

followed = obj_player;