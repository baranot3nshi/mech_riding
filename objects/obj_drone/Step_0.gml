input_get();
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
	case drone_type.standard:	sprite_index = spr_drone_1;	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_bullet2;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_cooldown = 40;
								break;		
								
	case drone_type.laser:		sprite_index = spr_drone_2;	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_bullet2;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_cooldown = 40;
								break;
								
	case drone_type.missile:	sprite_index = spr_drone_3;	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_shoot;
								shoot_cooldown = 20;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_missile;
								shoot_charge_snd = snd_missile_shoot;
								shoot_charge_cooldown = 40;
								break;
								
	case drone_type.tv:			sprite_index = spr_drone_4;	
								shoot_animation = obj_drone_shoot1_FX;
								shoot_bullet_type = obj_drone_bullet1;
								shoot_snd = snd_missile_shoot;
								shoot_cooldown = 20;
								
								shoot_charge_animation = obj_drone_shoot1_FX;
								shoot_charge_bullet_type = obj_drone_bullet2;
								shoot_charge_snd = snd_shoot_charge;
								shoot_charge_cooldown = 40;
								break;
}

//CHANGE TYPE
if (but_pad_left || but_pad_right)
{
	if (but_pad_left)	{type --;}
	if (but_pad_right)	{type ++;}
	
	change_FX = 8; 
	alarm[11] = 2;
}

type = clamp(type, 0, drone_type.size-1)

//type FX timer
if (change_FX != 0) {change_FX--; 					 if (change_FX < 0) {change_FX = 0;}}
#endregion

if (obj_player.state != states.mech) 
{followed = obj_player}
else
{followed = obj_player.current_mech}


if (followed.state != states.aim)
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

if (but_CHARGE_charge)
{
	lock_on_FX = spr_lock_on_charge_part;
}
else
{
	lock_on_FX = spr_lock_on_part;
}