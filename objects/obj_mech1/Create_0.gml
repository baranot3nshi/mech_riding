
x_spd = 0;
y_spd = 0;
dir = 1;
x_dir = 0;
colliding = false;
grounded = false;

//X movement vars
x_spd_max = 2;
accel = .4;

//Y movement vars
jump_power = 6.2; //3 tiles
jump_number = 0;
jump_number_max = 1;

weight = .3;
fall_spd_max = 7;

//FX vars
collider = obj_wall;	

//states and conditions
state = states.wait;
can_move = true;
can_fall = true;
walk_timer = 0;
vulnerable = true;

//charging vars
charging = false;
charge_timer = 0;
charge_timer_max = 70;

//charge jump vars
charge_jump_power = 7.5
jump_charge_step = 0;
jump_charge_timer = 0;
jump_charge_timer_max = 20;

sound_jump = snd_mech_jump;
sound_land = snd_mech_land;

//atk vars
atk_init_timer = 0;
atk1_timer = 0;
atkmid_timer = 0;
atk2_timer = 0;

atk_init_timer_max = 15;
atk_timer_max = 12;

jump_atk_init_timer = 0;
jump_atk_init_timer_max = 15

atk_step = 0;
jump_atk_step = 0;

sprite_aim = spr_mech1_idle;

//dash
dash_init_timer = 0;
dash_init_timer_max = 10;

dash_timer = 0;
dash_timer_max = 40;

dash_atk_timer = 0;
dash_atk_timer_max = 20; 

dash_step = 0;

dash_spd = 10;

//hammer
hammer_step = 0;
hammer_timer = 0;
hammer_timer_max = 5;



//hurt
sprite_hurt = spr_mech1_hurt;

hurt_timer = 0;
hurt_timer_max = 25;
vul_timer = 0;
vul_timer_max = 100;

create_mech1_walls();
