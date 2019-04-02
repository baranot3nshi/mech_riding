enum nme_states {
	idle,
	roam,
	follow,
	jump,
	fall,
	atk1,
	atk2,
	hurt,
	dead
}

state = nme_states.fall;

//define in each enemy create event after inheriting
HP = 2;

sprite_idle = undefined;
sprite_walk = undefined;
sprite_hurt = undefined;
sprite_dead = undefined;

script_idle = undefined;
script_roam = undefined;
script_atk1 = undefined; 
script_atk2 = undefined;

//MOVEMENT
x_spd = 0;
y_spd = 0;


//X VARS
x_spd_max = 1
accel = .2

//Y VARS
weight = .3;
fall_spd_max = 5;

grounded = false;

dir = 1;

collider = obj_wall;