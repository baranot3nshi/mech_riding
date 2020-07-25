// Inherit the parent event
event_inherited();

HP = 3;

sprite_idle = spr_nme_dasher_walk;
sprite_walk = spr_nme_dasher_walk;
sprite_hurt = spr_nme_dasher_hurt;
sprite_fall = sprite_idle;
sprite_land = sprite_idle;

spd = 1;
spd_dash_init = 3.5;
spd_dash = 2;

script_idle = nme_dasher_idle;
script_roam = nme_dasher_roam;
script_atk1 = nme_dasher_atk;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 10;

// ROAM VARS
_check_buf = 2;
dir = 1;

x_spd = 0;
y_spd = 0;

roam_timer = 0;

// ATK1 VARS
atk1_step = 0;
atk1_timer = 0;
atk1_timer_max = 20;

// STATUS VARS
dmg = 1;

flying = true;
grounded = false;
platform_side = 0;
