 // Inherit the parent event
event_inherited();

HP = 1;

sprite_idle = spr_nme_roller_walk_bot;
sprite_walk = spr_nme_roller_walk_bot;
sprite_hurt = spr_nme_roller_hurt;
sprite_fall = sprite_idle;
sprite_land = sprite_idle;

spd = 1

script_idle = nme_roller_idle;
script_roam = nme_roller_roam;
script_atk1 = nme_roller_atk;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 10;

// ROAM VARS
_check_buf = 2;
dir = 1;

x_spd = 0;
y_spd = 0;

roam_timer = 0;
roam_timer_max = random_range(60,90);

// ATK1 VARS
atk1_step = 0;
atk1_timer = 0;
atk1_timer_max = 35;

// STATUS VARS
dmg = 1;

flying = true;
grounded = false;
platform_side = 0;

// DEBUG VARS
_check_bot	 = 0;
_check_top	 = 0;
_check_left	 = 0;
_check_right = 0;

