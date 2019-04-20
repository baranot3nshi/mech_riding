input_get();
//STATES
switch(state)
{
	case drone_states.idle:		drone_state_idle();		break;
	case drone_states.follow:	drone_state_follow();	break;
	case drone_states.shoot:	drone_state_shoot();	break;
}

#region //TYPE
switch(type)
{
	case drone_type.standard:	sprite_index = spr_drone_1;	break;
	case drone_type.laser:		sprite_index = spr_drone_2;	break;
	case drone_type.missile:	sprite_index = spr_drone_3;	break;
	case drone_type.tv:			sprite_index = spr_drone_4;	break;
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


//AIMING
if (but_AIM_charge)
{
	if(!instance_exists(obj_crosshair)) {target = instance_create_depth(x+30*dir,y,depth+10,obj_crosshair)}
	
	dir = but_right - but_left;
	if (dir != 0) {image_xscale = sign(dir);}
}
else
{
	target = find_closest_nme(range_w,range_h)
	dir = obj_player.dir
	image_xscale = dir;
	
	//FOLLOW
	follow_x = obj_player.x - sign(image_xscale)*10;
	follow_y = obj_player.y - 20;
}

//SHOOTING COOLDOWN
if (shoot_timer >= 0)
{
	shoot_timer--;
}
if (shoot_timer < 0) {shoot_timer = 0;}