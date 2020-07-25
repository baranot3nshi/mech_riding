// Inherit the parent event
event_inherited();

script_idle = nme_turret_state_idle;
script_follow = nme_turret_state_follow;
script_atk1 = nme_turret_state_atk;

sprite_idle = spr_nme_turret_idle;
sprite_hurt = spr_nme_turret_hurt;
sprite_turn = spr_nme_turret_turn;

HP = 4;
unmovable = true;

//idle
idle_timer = 0;
idle_timer_max = 20;

//atk
atk_step = atk.atk1_init;

atk_charge_timer = 0;
atk_charge_timer_max = 40;

//debug
c_height = 0;
c_length = 0;