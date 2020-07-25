// Inherit the parent event
event_inherited();

HP = 2;

sprite_idle = spr_nme_ceiling_gun_idle;
sprite_walk = spr_nme_ceiling_gun_walk;
sprite_hurt = spr_nme_ceiling_gun_forward;
sprite_fall = sprite_idle;
sprite_land = sprite_idle;


spd = .5;

script_idle = nme_celing_gun_idle;
script_roam = nme_celing_gun_roam;
script_atk1 = nme_celing_gun_atk;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 25;

// ROAM VARS
_check_buf = 2;
dir = 1;

x_spd = 0;
y_spd = 0;

roam_timer = 0;
roam_timer_max = random_range(100,140);

// ATK1 VARS
gun_rot = 0;
cone_width = 270;

atk1_step = 0;
atk1_timer = 0;
atk1_timer_max = 80;

// STATUS VARS
dmg = 1;

flying = true;
grounded = false;
platform_side = 0;
unmovable = true;

// DEBUG VARS
_check_bot	 = 0;
_check_top	 = 0;
_check_left	 = 0;
_check_right = 0;

_pStart =  0;
_pTop_rot =	   0;
_pBottom_rot = 0;