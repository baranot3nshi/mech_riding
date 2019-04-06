///@descr taking damage

if (hitting_atk != other.id && state != nme_states.dead)
{
	hitting_atk = other.id;
	
	state = nme_states.hurt;
	sprite_index = sprite_hurt;
	
	HP -= other.dmg;
	hits_taken++
	
	//0 pushback = stun
	if (other.pushback = 0)
	{
		stun = true;
		stun_y = y;
	}
	else 
	//setting up the knockback
	{
		stun = false;
		
		var dir_push = point_direction(obj_player.x,obj_player.y,x,y)
	
		x_spd_push = lengthdir_x(other.pushback,dir_push)
		y_spd -= 2.5;
	}
}