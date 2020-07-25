/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = nme_states.fall;

//define in each enemy create event after inheriting
HP = 5;

sprite_idle = spr_nme_jumper_idle;
sprite_walk = undefined;
sprite_hurt = [spr_nme_jumper_hurt,spr_nme_jumper_hurt2];
sprite_dead = undefined;
sprite_jump = spr_nme_jumper_jump_upwards;
sprite_fall = spr_nme_jumper_fall;
sprite_land = spr_nme_jumper_fall_post;

script_idle = nme_jumper_state_idle;
script_roam = undefined;
script_atk1 = undefined; 
script_atk2 = undefined;

//IDLE VARS
idle_timer = 0;
idle_timer_max = 20;

//JUMP VARS
jump_power = 5;
jump_length = 2;

jump_timer = 0;
jump_timer_max = 10;