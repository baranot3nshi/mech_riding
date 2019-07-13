/// @description 

depth = -200;
#region states
enum states {
	on_ground, //must always be 0
	ground_atk,
	dash,
	hurt,
	aim,
	
	fall,
	jump,
	jetpack,
	jump_atk,
	jump_atk_charge,
	jump_charge,
	
	//new states should be added before this line
	mech,
	wait,
	wake
}
#endregion
#region variables
x_spd = 0;
y_spd = 0;
dir = 1;
x_dir = 0;

walk_timer = 0;

//X movement vars
x_spd_max = 1.7;
accel = .4;

//Y movement vars
jump_power = 4.7;
jump_number = 0;
jump_number_max = 1;
jetpack_timer = 0;

sound_jump = snd_jump;
sound_land = snd_land;

jet_spd_max = 4;
weight = .3;
jet_power = .12;
fall_spd_max = 5;

//FX vars

collider = obj_wall;	

//states and conditions
state = states.fall;
can_move = true;
can_fall = true;
current_mech = 0;
vulnerable = true;

//atk vars
charge_timer = 0;
charge_timer_max = 50;
charging = false;
atk1_timer = 0;
atkmid_timer = 0;
atk2_timer = 0;
atk_timer_max = 15;

atk_step = 0;
jump_atk_step = 0;

sprite_aim = spr_player_idle;


//hurt
sprite_hurt = spr_player_hurt;

hurt_timer = 0;
hurt_timer_max = 25;
vul_timer = 0;
vul_timer_max = 100;

#endregion




