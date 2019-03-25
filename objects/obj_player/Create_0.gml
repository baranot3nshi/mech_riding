/// @description 

#region states
enum states {
	on_ground, //must always be 0
	fall,
	jump,
	jetpack,
	ground_atk,
	jump_atk,
	mech
}
#endregion
#region variables
x_spd = 0;
y_spd = 0;

//X movement vars
x_spd_max = 1.7;
accel = .4; 
frict = .8;

//Y movement vars
jump_power = 5;
jump_number = 0;
jump_number_max = 2;

jet_spd_max = 4;
weight = .3;
jet_power = .12;
fall_spd_max = 5;

//FX vars
jetpack_FX_offset = -5;

collider = obj_wall;	

//states and conditions
state = states.fall;
can_move = true;
current_mech = 0;

//atk vars
atk_charge_timer = 0;
atk_charge_timer_max = 50;
atk1_timer = 0;
atkmid_timer = 0;
atk2_timer = 0;
atk_timer_max = 12;

atk_step = 0;
jump_atk_step = 0;

atk_charged = false;
#endregion




#region create hair strands
//hair_F0 = create_hair_strand(spr_player_hair_f, -4, -15,  1);
hair_F1 = create_hair_strand(spr_player_hair_f, -4, -15, .9);
hair_F2 = create_hair_strand(spr_player_hair_f, -4, -14, .7);
hair_F3 = create_hair_strand(spr_player_hair_f, -4, -13, .6);
hair_F4 = create_hair_strand(spr_player_hair_f, -4, -12, .5);

//hair_B0 = create_hair_strand(spr_player_hair_b, +4, -15,  1);
hair_B1 = create_hair_strand(spr_player_hair_b, +4, -15, .9);
hair_B2 = create_hair_strand(spr_player_hair_b, +4, -14, .7);
hair_B3 = create_hair_strand(spr_player_hair_b, +4, -13, .6);
hair_B4 = create_hair_strand(spr_player_hair_b, +4, -12, .5);
#endregion