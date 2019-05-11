// Inherit the parent event
event_inherited();

HP = 5;

sprite_idle = spr_nme_walker_idle;
sprite_walk = spr_nme_walker_walk;
sprite_hurt = [spr_nme_walker_hurt,spr_nme_walker_hurt2];
sprite_dead = spr_nme_walker_dead;
sprite_fall = spr_nme_walker_idle;
sprite_land = spr_nme_walker_idle;

script_idle = nme_walker_state_idle;
script_roam = nme_walker_state_roam;
script_atk1 = nme_walker_state_atk1; 

//IDLE VARS
idle_timer = 0;
idle_timer_max = 10;

//ATK VARS
atk_step = 0;
atk_timer = 0;
atk_timer_max = 40;

//vision
c_height = y-sprite_height;
c_length = x+110*dir;