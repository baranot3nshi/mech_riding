// Inherit the parent event
event_inherited();

HP = 1;

sprite_idle = spr_nme_bot_s_walk;
sprite_walk = spr_nme_bot_s_walk;
sprite_hurt = [spr_nme_bot_s_hurt,spr_nme_bot_s_hurt2];
sprite_fall = sprite_idle;
sprite_land = sprite_idle;

spd = .5

script_idle = nme_bug_s_idle;
script_roam = nme_bug_s_roam;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 10;

dmg = 1;