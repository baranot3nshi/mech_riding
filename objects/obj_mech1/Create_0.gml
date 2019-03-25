enum mech1_states {
	on_ground,
	fall,
	jump,
	ground_atk,
	jump_atk,
	jump_charge,
	
	//add states before these
	wait,
	wake
}

x_spd = 0;
y_spd = 0;

//X movement vars
x_spd_max = 2;
accel = .4; 
frict = .8;

//Y movement vars
jump_power = 6; //3 tiles
jump_number = 0;
jump_number_max = 1;

weight = .3;
fall_spd_max = 5;

//FX vars
jetpack_FX_offset = -5;

collider = obj_wall;	

//states and conditions
state = mech1_states.wait;
can_move = true;

//charging vars
charging = false;
charge_timer = 0;
charge_timer_max = 70;

//charge jump vars
charge_jump_power = 7.5
jump_charge_step = 0;
jump_charge_timer = 0;
jump_charge_timer_max = 20;


//atk vars
atk_charge_timer = 0;
atk_charge_timer_max = 25;

atk1_timer = 0;
atkmid_timer = 0;
atk2_timer = 0;

atk_timer_max = 12;

atk_step = 0;
jump_atk_step = 0;

atk_charged = false;

create_mech1_walls();
