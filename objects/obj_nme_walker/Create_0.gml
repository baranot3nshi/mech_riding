// Inherit the parent event
event_inherited();

HP = 10;

sprite_idle = spr_nme_walker_idle;
sprite_walk = spr_nme_walker_walk;
sprite_hurt = spr_nme_walker_hurt;
sprite_dead = spr_nme_walker_dead;

script_idle = nme_walker_state_idle;
script_roam = nme_walker_state_roam;
script_atk1 = nme_walker_state_atk1; 

idle_timer = 0;
idle_timer_max = 20;

//X VARS
x_spd_max = 1;
accel = .2;

//ATK VARS
atk_step = 0;
atk_timer = 0;
atk_timer_max = 40;

//vision
c_height = y-sprite_height;
c_length = x+110*dir;