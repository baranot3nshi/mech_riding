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
	
	mount
}

enum mechs {
	none,
	mech1,
	
	transition

}
#endregion

#region common variables
x_spd = 0;
y_spd = 0;
dir = 1;
x_dir = 0;

walk_timer = 0;

//X movement vars
x_spd_max = 0;
human_x_spd_max = 1.7;
mech1_x_spd_max = 2;
accel = .4;

//Y movement vars
jump_power = 0;
human_jump_power = 4.7;
mech1_jump_power = 6.2;

jump_number = 0;
jump_number_max = 1;
jetpack_timer = 0;

sound_jump = snd_jump;
sound_land = snd_land;

jet_spd_max = 4;
weight = .3;
jet_power = .12;

fall_spd_max = 0;
human_fall_spd_max = 5;
mech1_fall_spd_max = 7;

current_mech = mechs.none;
sprite_aim = spr_player_idle;
collider = obj_wall;	

//states and conditions
state = states.fall;
can_move = true;
can_fall = true;
vulnerable = true;


//hurt
sprite_hurt = spr_player_hurt;

hurt_timer = 0;
hurt_timer_max = 25;
vul_timer = 0;
vul_timer_max = 100;
#endregion

#region player variables
//atk vars
charge_timer = 0;
charge_timer_max = 50;
charging = false;

human_atk1_timer = 0;
human_atkmid_timer = 0;
human_atk2_timer = 0;
human_atk_timer_max = 15;

human_atk_step = 0;
human_jump_atk_step = 0;


#endregion
#region mech1 variables
//charge jump vars
mech1_charge_jump_power = 7.5
mech1_jump_charge_step = 0;
mech1_jump_charge_timer = 0;
mech1_jump_charge_timer_max = 20;

sound_jump = snd_mech_jump;
sound_land = snd_mech_land;

//atk vars
mech1_atk_init_timer = 0;
mech1_atk1_timer = 0;
mech1_atkmid_timer = 0;
mech1_atk2_timer = 0;

mech1_atk_init_timer_max = 15;
mech1_atk_timer_max = 12;

mech1_jump_atk_init_timer = 0;
mech1_jump_atk_init_timer_max = 7;

mech1_atk_step = 0;
mech1_jump_atk_step = 0;

//dash
dash_init_timer = 0;
dash_init_timer_max = 10;

dash_timer = 0;
dash_timer_max = 40;

dash_atk_timer = 0;
dash_atk_timer_max = 10; 

dash_step = 0;

dash_spd = 15;

//hammer
hammer_step = 0;
hammer_timer = 0;
hammer_timer_max = 5;
#endregion

#region create hair strands
if (!instance_exists(obj_player_hair))
{
	instance_create_depth(0,0,0,obj_RENDER_outline)

	create_hair_strand(spr_player_hair_f, -4, -14, 1);
	create_hair_strand(spr_player_hair_f, -4, -14, .9);
	create_hair_strand(spr_player_hair_f, -4, -12, .7);
	create_hair_strand(spr_player_hair_f, -4, -12, .6);
	create_hair_strand(spr_player_hair_f, -4, -11, .5);

	create_hair_strand(spr_player_hair_b, +4, -14, 1);
	create_hair_strand(spr_player_hair_b, +4, -14, .9);
	create_hair_strand(spr_player_hair_b, +4, -13, .7);
	create_hair_strand(spr_player_hair_b, +4, -12, .6);
	create_hair_strand(spr_player_hair_b, +4, -11, .5);
}
#endregion