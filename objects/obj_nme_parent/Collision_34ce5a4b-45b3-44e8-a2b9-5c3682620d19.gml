///@descr taking damage

if (vulnerable)
{
	vulnerable = false;
	state = nme_states.hurt;
	sprite_index = sprite_hurt;
	
	HP -= other.dmg;
	
	//setting up the knockback
	var dir_push = point_direction(obj_player.x,obj_player.y,x,y)
	
	x_spd_push = lengthdir_x(other.pushback,dir_push)
	y_spd_push = lengthdir_y(other.pushback,dir_push)
	
}