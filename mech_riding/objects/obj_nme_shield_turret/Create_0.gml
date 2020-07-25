// Inherit the parent event
event_inherited();

script_idle = nme_turret_state_idle;
script_follow = nme_turret_state_follow;
sprite_idle = spr_nme_shield_turret_idle;
sprite_hurt = spr_nme_shield_turret_hurt;
sprite_turn = spr_nme_shield_turret_turn;
script_atk1 = nme_turret_shield_state_atk;

hurt_reset_state = nme_states.atk1

HP = 4;
unmovable = true;

// idle
idle_timer = 0;
idle_timer_max = 65;

// atk
atk_step = atk.atk1_init;

atk_charge_timer = 0;
atk_charge_timer_max = 25;

// debug
c_height = 0;
c_length = 0;

// raise
raise_timer = 0;
raise_timer_max = 15;

// lower
lower_timer = 0;
lower_timer_max = 15;

toggle_shield_horizontal(true);