enum nme_states {
	idle,
	roam,
	follow,
	jump,
	fall,
	land,
	atk1,
	atk2,
	hurt,
	dead
}

state = nme_states.idle;

//define in each enemy create event after inheriting
HP = 5;

sprite_idle = undefined;
sprite_walk = undefined;
sprite_hurt = undefined;
sprite_dead = undefined;
sprite_jump = undefined;
sprite_fall = sprite_idle;
sprite_land = sprite_idle;

script_idle = undefined;
script_roam = undefined;
script_follow = undefined;
script_atk1 = undefined; 
script_atk2 = undefined;

hurt_reset_state = nme_states.idle;

//MOVEMENT
flying = false;
x_spd = 0;
y_spd = 0;

but_down_long = 0; //to avoid falling down while on platforms
but_down = 0; //to avoid falling down while on platforms

//X VARS
x_spd_max = 1;
accel = .2;

//Y VARS
weight = .3;
fall_spd_max = 5;

//simultaneous states
grounded = false;

//movement related
dir = 1;
collider = [obj_wall, obj_wall_nme, obj_platform];

//hurt vars
unmovable = false;

hurt_timer = 0;
hurt_timer_max = 20;
hitting_atk = undefined;

hurt_dir_array = [0,0,0,0];

//dead vars
dead_timer = 0;
dead_timer_max = 30;
dead_FX = obj_explosion_S_FX;

pickup_droprate = 10;
break_particle_sprite = [spr_nme_destroy_particle, spr_wood_particle2];
particle_number = 4;

//land vars
land_timer = 0;
land_timer_max = 10;

//damage
dmg = 1;

//DEBUG FEATURES
hits_taken = 0

// shake
shake = 0;

spr_x = x;
spr_y = y;
start_x = x;
start_y = y;