// Inherit the parent event
event_inherited();

HP = 6;

sprite_idle = spr_nme_flyer_idle;
sprite_hurt = [spr_nme_flyer_hurt,spr_nme_flyer_hurt2];

script_idle = nme_flyer_state_idle;
script_roam = nme_flyer_state_roam;
script_follow = nme_flyer_state_follow;
script_atk1 = nme_flyer_state_atk1; 

flying = true;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 10;

//ROAM VARS
roam_timer = 0;
roam_timer_max = 30;

hover_spd = 2;
spd = 1.8;
v_dir = 1

//FOLLOW VARS
follow_dist = 180;
follow_radius = follow_dist - 30;

atk_distance = 60;

//ATK VARS
atk_step = 0;
atk_timer = 0;
atk_timer_max = 7;

hover_fx = instance_create_depth(x,y,depth+5,obj_nme_flyer_hover_FX)

//DEBUG
nme_detect_player_triangle(follow_dist, follow_dist)
nme_detect_player_circle(follow_dist)