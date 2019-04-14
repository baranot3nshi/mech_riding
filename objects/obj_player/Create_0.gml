/// @description 

#region states
enum states {
	on_ground, //must always be 0
	fall,
	jump,
	jetpack,
	ground_atk,
	dash,
	jump_atk,
	jump_charge,
	hurt,
	
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

//X movement vars
x_spd_max = 1.7;
accel = .4;

//Y movement vars
jump_power = 5;
jump_number = 0;
jump_number_max = 2;

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


//hurt
sprite_hurt = spr_player_hurt;

hurt_timer = 0;
hurt_timer_max = 25;
vul_timer = 0;
vul_timer_max = 100;

#endregion




#region create hair strands

//hair_F0 = instance_create_depth(x-4,y-14,depth+4,obj_player_hair_fixed)
hair_F0 = create_hair_strand(spr_player_hair_f, -4, -14, 1);
hair_F1 = create_hair_strand(spr_player_hair_f, -4, -14, .9);
hair_F2 = create_hair_strand(spr_player_hair_f, -4, -12, .7);
hair_F3 = create_hair_strand(spr_player_hair_f, -4, -12, .6);
hair_F4 = create_hair_strand(spr_player_hair_f, -4, -11, .5);

//hair_B0 = instance_create_depth(x+4,y-15,depth+4,obj_player_hair_fixed);
hair_B0 = create_hair_strand(spr_player_hair_b, +4, -14, 1);
hair_B1 = create_hair_strand(spr_player_hair_b, +4, -14, .9);
hair_B2 = create_hair_strand(spr_player_hair_b, +4, -13, .7);
hair_B3 = create_hair_strand(spr_player_hair_b, +4, -12, .6);
hair_B4 = create_hair_strand(spr_player_hair_b, +4, -11, .5);

//hair_B0.sprite_index = spr_player_hair_b;
#endregion