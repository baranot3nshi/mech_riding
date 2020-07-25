if (!global.PAUSE_MENU_show) {input_get();}


//STATES
switch(state)
{
	case drone_states.idle:			drone_state_idle();			break;
	case drone_states.follow:		drone_state_follow();		break;
	case drone_states.shoot:		drone_state_shoot();		break;
	case drone_states.shoot_charge:	drone_state_shoot_charge();	break;
}

#region //TYPE
switch(type)
{
	case drone_type.standard:	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								sprite_idle = spr_drone_1;
								sprite_close = spr_drone_1_close;
								sprite_open = spr_drone_1_open;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_bullet2;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_AP =  global.AP_chunk/3.5;
								shoot_charge_cooldown = 40;
								break;		
								
	case drone_type.laser:			
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								sprite_idle = spr_drone_2;
								sprite_close = spr_drone_2_close;
								sprite_open = spr_drone_2_open;
								
								shoot_charge_animation = obj_drone_laser_shoot_FX;
								shoot_charge_bullet_type = obj_drone_laser;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_AP =  global.AP_chunk/3;
								shoot_charge_cooldown = 40;
								break;
								
	case drone_type.missile:	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								sprite_idle = spr_drone_3;
								sprite_close = spr_drone_3_close;
								sprite_open = spr_drone_3_open;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_missile;
								shoot_charge_snd = snd_missile_shoot;
								shoot_charge_AP =  global.AP_chunk/2;
								shoot_charge_cooldown = 40;
								break;
								
	case drone_type.tv:			
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_missile_shoot;
								shoot_cooldown = 20;
								
								sprite_idle = spr_drone_4;
								sprite_close = spr_drone_4;
								sprite_open = spr_drone_4;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_bullet2;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_AP =  global.AP_chunk/3;
								shoot_charge_cooldown = 40;
								break;
}
#endregion
#region//CHANGE TYPE
if (but_pad_left || but_pad_right)
{
	if (but_pad_left)	{if (type_pos = 0) {type_pos = owned_drones_number - 1} else type_pos --;}
	if (but_pad_right)	{if (type_pos = owned_drones_number - 1) {type_pos = 0} else type_pos ++;}
	
	change_FX = 8; 
	alarm[11] = 2;


type_pos = clamp(type_pos, 0, owned_drones_number-1)

type = owned_drones[type_pos];
global.drone_type = type;
}

//type FX timer
if (change_FX != 0) {change_FX--; 					 if (change_FX < 0) {change_FX = 0;}}
#endregion

// follow code, including wall failsafe
if (obj_player.state != states.aim)
{
	drone_follow();
}

#region//AIMING && SHOOTING
if (but_AIM_charge)
{
	if(!instance_exists(obj_crosshair)) {target = instance_create_depth(x+reticule_dist*dir,y,depth+10,obj_crosshair)}
	
	global.analog_sensitivity = .05;
	global.analog_d_sensitivity = .05;
	dir = but_right - but_left;
	if (dir != 0) {image_xscale = sign(dir);}
}
else
{
	target = find_closest_nme(range_w,range_h)
	dir = obj_player.dir
	image_xscale = dir;
	global.analog_sensitivity = .3;
	global.analog_d_sensitivity = .9;
	
	drone_follow();
}

//SHOOTING COOLDOWN
if (shoot_timer >= 0)
{
	shoot_timer--;
}
if (shoot_timer < 0) {shoot_timer = 0;}
#endregion
#region charging
if (but_CHARGE_charge)
{
	lock_on_FX = spr_lock_on_charge_part;
	if (sprite_index != sprite_open) 
		{
			sprite_index = sprite_open;
			image_index = 0;
		}
}
else
{
	lock_on_FX = spr_lock_on_part;
	if (sprite_index != sprite_close) 
		{
			sprite_index = sprite_close;
			image_index = 0;
		}
}
#endregion